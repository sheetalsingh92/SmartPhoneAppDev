//
//  main.swift
//  BuyApp
//
//  Created by Sheetal Singh on 10/12/17.
//  Copyright © 2017 NEU. All rights reserved.
//

import Foundation


var store = Store()
 let main_wishlist = Wishlist()

var choice:Bool = true
while(choice){
 
print("Enter items in store")
    
let itemType = ItemType(wishlist:main_wishlist)
print("Enter ItemType name")
    var typeitem = ""
    //item.itemName = readLine()!
    // safely unwrap item name in case the user does not enter anything
    if let typeitem = readLine() {
        itemType.name = typeitem
    }
//itemType.wishlist = main_wishlist

print("Enter Item name")
var nameItem = ""
//item.itemName = readLine()!
// safely unwrap item name in case the user does not enter anything
if let itemName = readLine() {
    nameItem = itemName
    }

print ("Enter Item Price")
var priceItem = 0
//item.itemPrice = Int(readLine()!)!
if let itemPrice = readLine() {
    if let itemPrice = Int(itemPrice) {
        priceItem = itemPrice
        
    }
}

let item = Item(itemName: nameItem , itemPrice: priceItem, type: itemType)
itemType.addItem(item)
store.addItem(item)

//main_wishlist.add_itemType(itemType)
    
    print("Do you want to continue: 1-YES/0-EXIT");
    var con = 0
    //item.itemPrice = Int(readLine()!)!
    if let user_con = readLine() {
        if let user_con = Int(user_con) {
            con = user_con
        }
    }
    if(con == 1){
        choice = true;
        
    }
    else
    {
        print("Display items in store:")
        for item in store.arr_item{
            print(item.itemName, item.itemPrice, item.type.name)
    }
        
        choice = false;
        choice = true
        while(choice){
            print("1. Add Item 2. Item List 3. Search Item 4. Delete Item");
            
            var option_value = 0
            //item.itemPrice = Int(readLine()!)!
            if let option = readLine() {
                if let option = Int(option) {
                    option_value = option
                }
            }
            switch(option_value){
            case 1:
               
              main_wishlist.addItem(item)
                
            case 2:
                
                main_wishlist.listItem()
                
            case 3:
               
                main_wishlist.searchItem(item)
                
            case 4:
                
                main_wishlist.deleteItem(item)
                
                
            default:
                print("Please enter correct option");
                break;
            }
            var con:Int
            print("Do you want to continue: 1-YES/0-EXIT");
            var condition = 0
            //item.itemPrice = Int(readLine()!)!
            if let usercon = readLine() {
                if let usercon = Int(usercon) {
                    condition = usercon
                }
            }
            if(condition == 1){
                choice = true;
                
            }
            else
            {
                choice = false;
            }
            
        }

        
    }
    
}



//item.type = itemType


























