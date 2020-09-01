//
//  DetailViewController.swift
//  appFacelift
//
//  Created by ac1ra on 25.08.2020.
//  Copyright © 2020 ac1ra. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    var items = Price()
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var headerView: DetailHeaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        headerView.HeaderLabel.text = items.arraysName
        print("test items:\(items.arraysName)")

            // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: DetailTextViewCell.self), for: indexPath) as! DetailTextViewCell
            cell.textFrstCell.text = items.arraysName
            cell.textScndCell.text = String(items.weightTotal)
            cell.selectionStyle = .none
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: DetailScndTextViewCell.self), for: indexPath) as! DetailScndTextViewCell
            cell.labelDescriptionScndCell.text = items.arraysName
            cell.selectionStyle = .none
            return cell
        default:
            fatalError("Failed to instantiate the table view cell for detail view controller")
        }
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
