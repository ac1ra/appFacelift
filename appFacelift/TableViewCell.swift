//
//  TableViewCell.swift
//  appFacelift
//
//  Created by ac1ra on 25.08.2020.
//  Copyright © 2020 ac1ra. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var wallsLabel: UILabel!
    @IBOutlet weak var quantityBox: UILabel!
    @IBOutlet weak var quantityTiles: UILabel!
    @IBOutlet weak var totalPrice: UILabel!
    @IBOutlet weak var totalWeight: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
