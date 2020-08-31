//
//  DetailTextViewCell.swift
//  appFacelift
//
//  Created by ac1ra on 31.08.2020.
//  Copyright © 2020 ac1ra. All rights reserved.
//

import UIKit

class DetailTextViewCell: UITableViewCell {

    
    @IBOutlet var textFrstCell: UILabel!{
        didSet{
            textFrstCell.numberOfLines = 0
        }
    }
    @IBOutlet var textScndCell: UILabel!{
        didSet{
            textFrstCell.numberOfLines = 0
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
