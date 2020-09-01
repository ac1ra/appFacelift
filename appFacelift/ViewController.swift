//
//  ViewController.swift
//  appFacelift
//
//  Created by ac1ra on 25.08.2020.
//  Copyright © 2020 ac1ra. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView = UITableView()
    
    var arrays: [Price] = [
        Price(arraysName: "Плитка настенная Керкира", wallm2: 15.4, quantityBox: 11, quantityTile: 77, priceTotal: 9563, weightTotal: 13),
        Price(arraysName: "Плитка настенная Керкира", wallm2: 15.4, quantityBox: 11, quantityTile: 77, priceTotal: 9563, weightTotal: 13),
        Price(arraysName: "Плитка настенная Керкира", wallm2: 15.4, quantityBox: 11, quantityTile: 77, priceTotal: 9563, weightTotal: 13)
    ]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrays.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let detailCell = "datacell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: detailCell, for: indexPath) as! TableViewCell
        
        cell.nameLabel.text = arrays[indexPath.row].arraysName
        cell.wallsLabel.text = String(arrays[indexPath.row].wallm2)
        cell.quantityBox.text = String(arrays[indexPath.row].quantityBox)
        cell.quantityTiles.text = String(arrays[indexPath.row].quantityTile)
        cell.totalPrice.text = String(arrays[indexPath.row].priceTotal)
        cell.totalWeight.text = String(arrays[indexPath.row].weightTotal)
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete", handler: {(action,sourceView,completionHandler)in
            self.arrays.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
            completionHandler(true)
        })
        let swipeActionsConfiguration = UISwipeActionsConfiguration(actions: [deleteAction])
        return swipeActionsConfiguration
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! DetailViewController
                destinationController.items = arrays[indexPath.row]
            }
        }
    }
}

