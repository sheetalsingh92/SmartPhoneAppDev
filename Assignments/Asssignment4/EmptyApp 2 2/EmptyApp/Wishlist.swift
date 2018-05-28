//
//  Wishlist.swift
//  EmptyApp
//
//  Created by Sheetal Singh on 10/27/17.
//  Copyright © 2017 rab. All rights reserved.
//
import Foundation


class Wishlist{
    var arr_wishlist: [Item] = []
    
    
    func addItem(_ t:Item)
    {
        
        arr_wishlist.append(t)
        
    }
    
    
    
    
    
    
    
    
    //
    //    func searchItem (_ item:Item)
    //    {
    //        if( main_wishlist.arr_wishlist.isEmpty)
    //        {
    //            print("wishlist is empty")
    //        }
    //        else
    //        {
    //            print("Search for item in wish list")
    //            print("Enter name of the item")
    //            let item_name = readLine()
    //            var xAppears = false
    //            for item in main_wishlist.arr_wishlist{
    //                if(item_name == item.itemName){
    //                    xAppears = true
    //                    print(item.itemName, item.itemPrice, item.type.name)
    //
    //                }
    //            }
    //    if (!(xAppears))
    //      {
    //                    print("The item is not found in wishlist");
    //                }
    //
    //            }
    //        }
    //
    //
    //
    //    func deleteItem(_ item:Item)
    //    {
    //        if( main_wishlist.arr_wishlist.isEmpty)
    //        {
    //            print("wishlist is empty")
    //        }
    //        else
    //        {
    //            print("Delete Item from wishlist")
    //
    //            print("Enter name of the item")
    //            let item_name = readLine();
    //
    //            var counter = 0;
    //            var xAppears = false
    //            for item in main_wishlist.arr_wishlist{
    //                if(item_name == item.itemName){
    //                    xAppears = true
    //                    main_wishlist.arr_wishlist.remove(at: counter)
    //                    print("Item deleted successfully")
    //                    break
    //                }
    //
    //
    //                counter = counter + 1
    //                
    //            }
    //            
    //            if (!(xAppears))
    //            {
    //                print("The item is not found in wishlist");
    //            }
    //            
    //        }
    //
    //    }
    
}
