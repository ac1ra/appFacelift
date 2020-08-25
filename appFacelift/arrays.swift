//
//  arrays.swift
//  appFacelift
//
//  Created by ac1ra on 25.08.2020.
//  Copyright © 2020 ac1ra. All rights reserved.
//

import Foundation
class Price {
    var arraysName: String
    var wallm2: Float
    var quantityBox: Int
    var quantityTile: Int
    var priceTotal: Float
    var weightTotal: Int
    
    init(arraysName: String, wallm2: Float, quantityBox:Int, quantityTile:Int, priceTotal:Float, weightTotal:Int) {
        self.arraysName = arraysName
        self.wallm2 = wallm2
        self.quantityBox = quantityBox
        self.quantityTile = quantityTile
        self.priceTotal = priceTotal
        self.weightTotal = weightTotal
    }
    convenience init(){
    self.init(arraysName:"",wallm2:0,quantityBox:0,quantityTile:0,priceTotal:0,weightTotal:0)
    }
}
