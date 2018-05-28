//
//  Item.swift
//  EmptyApp
//
//  Created by Sheetal Singh on 10/27/17.
//  Copyright © 2017 rab. All rights reserved.
//

import Foundation


class Item{
    
    var itemName: String
    var itemPrice : Int
    var type : ItemType
    
    init(itemName:String, itemPrice: Int, type: ItemType){
        
        self.itemName = itemName
        self.itemPrice = itemPrice
        self.type = type
        
        
        
    }
    
}
