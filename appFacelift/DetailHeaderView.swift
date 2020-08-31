//
//  DetailHeaderView.swift
//  appFacelift
//
//  Created by ac1ra on 31.08.2020.
//  Copyright © 2020 ac1ra. All rights reserved.
//

import UIKit

class DetailHeaderView: UIView {
    
    @IBOutlet var HeaderImageView: UIImageView!
    @IBOutlet var HeaderLabel: UILabel!{
        didSet{
            HeaderLabel.numberOfLines = 0
        }
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
