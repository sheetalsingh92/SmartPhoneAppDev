//
//  Store.swift
//  EmptyApp
//
//  Created by Sheetal Singh on 10/27/17.
//  Copyright © 2017 rab. All rights reserved.
//

import Foundation

class Store {
    
    var arr_item: [Item] = []
    
    func addItem(_ item:Item){
        
        arr_item.append(item)
        
        
        if(arr_item.isEmpty){
            print("Its empty")
        }
    }
}
