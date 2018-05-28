//
//  AppDelegate.swift
//  EmptyApp
//
//  Created by rab on 10/15/17.
//  Copyright © 2017 rab. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var mainView : UIView?
    
    var store = Store()
    var main_wishlist = Wishlist()
    
    
    //let itemType = ItemType()

    let DynamicView=UIView(frame: UIScreen.main.bounds)
  
    let view1 = UIView(frame: UIScreen.main.bounds)
    
    let view2 = UIView(frame: UIScreen.main.bounds)
    let view3 = UIView(frame: UIScreen.main.bounds)
    let view4 = UIView(frame: UIScreen.main.bounds)
    
     let btn_add:UIButton = UIButton(frame: CGRect(x: 100, y: 200, width: 200, height: 40))
    let itemname = UITextField(frame: CGRect(x:220, y:180, width:150, height:40))
    let itemprice = UITextField(frame: CGRect(x:220, y:230, width:150, height:40))
    let itemtype = UITextField(frame: CGRect(x:220, y:280, width:150, height:40))
    
    
    let item_searchname = UITextField(frame: CGRect(x:220, y:180, width:150, height:40))
    let text_searchView = UITextView(frame: CGRect(x: 20, y: 10, width: 250, height: 100))
    let btn_search_wishlist:UIButton = UIButton(frame: CGRect(x: 100, y: 450, width: 200, height: 40))
    
    let item_deletename = UITextField(frame: CGRect(x:220, y:180, width:150, height:40))
     let btn_delete_wishlist:UIButton = UIButton(frame: CGRect(x: 100, y: 450, width: 200, height: 40))
    
    func showAlert(message : String){
        let alert = UIAlertView()
        alert.title = "Alert"
        alert.message = message
        alert.addButton(withTitle: "Ok")
        alert.show()
    }
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        if let window = window {
            window.backgroundColor = UIColor.white
            window.rootViewController = UIViewController()
            window.makeKeyAndVisible()
        }

        
          DynamicView.backgroundColor=UIColor.gray
        
        let rect:CGRect = CGRect(x:150,y:50,width:100,height:50)
        let label:UILabel = UILabel(frame: rect)
        label.text = "Buy App"
        
       
        btn_add.setTitle("Add", for: UIControlState.normal)
        btn_add.layer.cornerRadius = 20.0
        btn_add.layer.borderColor = UIColor.red.cgColor
        btn_add.layer.borderWidth = 2.0
        btn_add.backgroundColor = UIColor.brown
        btn_add.addTarget(self, action: #selector(self.add(sender:)), for: .touchUpInside)
        
        
        let btn_list:UIButton = UIButton(frame: CGRect(x: 100, y: 250, width: 200, height: 40))
        btn_list.setTitle("List", for: UIControlState.normal)
        btn_list.layer.cornerRadius = 20.0
        btn_list.layer.borderColor = UIColor.red.cgColor
        btn_list.layer.borderWidth = 2.0
        btn_list.backgroundColor = UIColor.brown
        btn_list.addTarget(self, action: #selector(self.list(sender:)), for: .touchUpInside)
        
        let btn_search:UIButton = UIButton(frame: CGRect(x: 100, y: 300, width: 200, height: 40))
        btn_search.setTitle("Search", for: UIControlState.normal)
        btn_search.layer.cornerRadius = 20.0
        btn_search.layer.borderColor = UIColor.red.cgColor
        btn_search.layer.borderWidth = 2.0
        btn_search.backgroundColor = UIColor.brown
        btn_search.addTarget(self, action: #selector(self.search(sender:)), for: .touchUpInside)
        
        
        let btn_delete:UIButton = UIButton(frame: CGRect(x: 100, y: 350, width: 200, height: 40))
        btn_delete.setTitle("Delete", for: UIControlState.normal)
        btn_delete.layer.cornerRadius = 20.0
        btn_delete.layer.borderColor = UIColor.red.cgColor
        btn_delete.layer.borderWidth = 2.0
        btn_delete.backgroundColor = UIColor.brown
        btn_delete.addTarget(self, action: #selector(self.delete(sender:)), for: .touchUpInside)
        
        DynamicView.addSubview(label)
        DynamicView.addSubview(btn_add)
        DynamicView.addSubview(btn_list)
        DynamicView.addSubview(btn_search)
        DynamicView.addSubview(btn_delete)
        
        window?.addSubview(DynamicView)
        
        return true
    }
    

    
    func delete(sender: UIButton!) {
        DynamicView.isHidden = true;
        
        let item_name:UILabel = UILabel(frame: CGRect(x:50,y:150,width:150,height:100))
        item_name.text="Item Name"
        
        
        item_deletename.textAlignment = NSTextAlignment.center
        item_deletename.textColor = UIColor.black
        item_deletename.backgroundColor = UIColor.white
        item_deletename.autocapitalizationType = UITextAutocapitalizationType.words
        item_deletename.clearButtonMode = .whileEditing
        item_deletename.placeholder = "Enter text"
        item_deletename.keyboardType = .default
        item_deletename.returnKeyType = .done
        
        
        view3.backgroundColor = UIColor.gray
        
        
        
        let btn_back:UIButton = UIButton(frame: CGRect(x: 100, y: 500, width: 200, height: 40))
        btn_back.setTitle("Back", for: UIControlState.normal)
        btn_back.layer.cornerRadius = 20.0
        btn_back.layer.borderColor = UIColor.red.cgColor
        btn_back.layer.borderWidth = 2.0
        btn_back.backgroundColor = UIColor.brown
        btn_back.addTarget(self, action: #selector(self.back(sender:)), for: .touchUpInside)
        
        
        btn_delete_wishlist.setTitle("Delete", for: UIControlState.normal)
        btn_delete_wishlist.layer.cornerRadius = 20.0
        btn_delete_wishlist.layer.borderColor = UIColor.red.cgColor
        btn_delete_wishlist.layer.borderWidth = 2.0
        btn_delete_wishlist.backgroundColor = UIColor.brown
        btn_delete_wishlist.addTarget(self, action: #selector(self.delete_wishlist(sender:)), for: .touchUpInside)
        
        view1.backgroundColor = UIColor.gray
        view1.addSubview(item_name)
        view1.addSubview(item_deletename)
        view1.addSubview(btn_delete_wishlist)
        view1.addSubview(btn_back)
         window?.addSubview(view1)
    }
    
    func delete_wishlist(sender: UIButton!){
        
        if (item_deletename.text == ""){
            showAlert(message: "Please enter Item Name")
        }
            
        else{
            
            if( main_wishlist.arr_wishlist.isEmpty)
                    {
                         showAlert(message: "wishlist is empty")
                        item_deletename.text=""
                    }
                    else
                    {
                        
                        var counter = 0;
                        var xAppears = false
                        for item in main_wishlist.arr_wishlist{
                            if(item_deletename.text == item.itemName){
                                xAppears = true
                                main_wishlist.arr_wishlist.remove(at: counter)
                                showAlert(message: "Item deleted successfully")
                                item_deletename.text = ""
                                break
                            }
            
            
                            counter = counter + 1
                            
                        }
                        
                        if (!(xAppears))
                        {
                           showAlert(message: "The item is not found in wishlist");
                            item_deletename.text = ""
                        }
                        
                    }
            
                }

  
        }
        
    
    
    func add(sender: UIButton!) {
        DynamicView.isHidden = true;
        
        let item_name:UILabel = UILabel(frame: CGRect(x:50,y:150,width:150,height:100))
        item_name.text="Item Name"
        
        let item_price:UILabel = UILabel(frame: CGRect(x:50,y:200,width:150,height:100))
        item_price.text="Item Price"
        
        let item_type:UILabel = UILabel(frame: CGRect(x:50,y:250,width:150,height:100))
        item_type.text="Item Type"
        
       
            
        itemname.textAlignment = NSTextAlignment.center
        itemname.textColor = UIColor.black
        itemname.backgroundColor = UIColor.white
        itemname.autocapitalizationType = UITextAutocapitalizationType.words
        itemname.clearButtonMode = .whileEditing
        itemname.placeholder = "Enter text"
        itemname.keyboardType = .default
        itemname.returnKeyType = .done
        
        
        
        itemprice.textAlignment = NSTextAlignment.center
        itemprice.textColor = UIColor.black
        itemprice.backgroundColor = UIColor.white
        itemprice.autocapitalizationType = UITextAutocapitalizationType.words
        itemprice.clearButtonMode = .whileEditing
        itemprice.placeholder = "Enter number"
        itemprice.keyboardType = .default
        itemprice.returnKeyType = .done
        
        
        
        itemtype.textAlignment = NSTextAlignment.center
        itemtype.textColor = UIColor.black
        itemtype.backgroundColor = UIColor.white
        itemtype.autocapitalizationType = UITextAutocapitalizationType.words
        itemtype.clearButtonMode = .whileEditing
        itemtype.placeholder = "Enter text"
        itemtype.keyboardType = .default
        itemtype.returnKeyType = .done
        
        let btn_add:UIButton = UIButton(frame: CGRect(x: 100, y: 330, width: 200, height: 40))
        btn_add.setTitle("Add", for: UIControlState.normal)
        btn_add.layer.cornerRadius = 20.0
        btn_add.layer.borderColor = UIColor.red.cgColor
        btn_add.layer.borderWidth = 2.0
        btn_add.backgroundColor = UIColor.brown
        btn_add.addTarget(self, action: #selector(self.add_wishlist(sender:)), for: .touchUpInside)
        
        let btn_back:UIButton = UIButton(frame: CGRect(x: 100, y: 380, width: 200, height: 40))
        btn_back.setTitle("Back", for: UIControlState.normal)
        btn_back.layer.cornerRadius = 20.0
        btn_back.layer.borderColor = UIColor.red.cgColor
        btn_back.layer.borderWidth = 2.0
        btn_back.backgroundColor = UIColor.brown
        btn_back.addTarget(self, action: #selector(self.back(sender:)), for: .touchUpInside)
        
        
        
        view2.backgroundColor = UIColor.gray
        view2.addSubview(item_name)
        view2.addSubview(item_price)
        view2.addSubview(item_type)
        
        view2.addSubview(itemname)
        view2.addSubview(itemprice)
        view2.addSubview(itemtype)
        
        view2.addSubview(btn_add)
        view2.addSubview(btn_back)
        window?.addSubview(view2)
    }
    
    func add_wishlist(sender: UIButton!){
        DynamicView.isHidden = false
        
        
        do
        {     let regex_num = try NSRegularExpression(pattern: ".*[^0-9.].*", options: [])
            let regex = try NSRegularExpression(pattern: ".*[^A-Za-z ].*", options: [])
            if (itemname.text == ""){
                showAlert(message: "Please enter ItemName")
                }
            
            
        
        else  if(regex_num.firstMatch(in: itemprice.text!, options: [], range: NSMakeRange(0, (itemprice.text?.characters.count)!)) != nil){
                    showAlert(message: "Enter numbers for price")
                }
                
        else if((regex.firstMatch(in: itemtype.text!, options: [], range: NSMakeRange(0, (itemtype.text?.characters.count)!)) != nil) || (itemtype.text == "")){
                showAlert(message: "Please enter string for ItemType")
                
        }
            
         else{
                
                let itemType = ItemType()
                var nameItem = ""
                if let itemName = itemname.text{
                    nameItem = itemName
                }
                
                
                var priceItem = 0
                
                if let itemPrice = Int((itemprice.text!)) {
                    priceItem = itemPrice
                }
                
                
                if let  typeItem = itemtype.text{
                    itemType.name = typeItem
                }
                
                
                
                let item = Item(itemName:nameItem,itemPrice:priceItem,type:itemType)
                itemType.addItem(item)
                
                main_wishlist.addItem(item)
                itemname.text = ""
                itemprice.text = ""
                itemtype.text = ""
                window?.addSubview(DynamicView)
            }
        }
        catch{
            
        }
        
        
        
        
    }
    
    
    func search(sender: UIButton!) {
        DynamicView.isHidden = true;
        
        let item_name:UILabel = UILabel(frame: CGRect(x:50,y:150,width:150,height:100))
        item_name.text="Item Name"
        
        
        item_searchname.textAlignment = NSTextAlignment.center
        item_searchname.textColor = UIColor.black
        item_searchname.backgroundColor = UIColor.white
        item_searchname.autocapitalizationType = UITextAutocapitalizationType.words
        item_searchname.clearButtonMode = .whileEditing
        item_searchname.placeholder = "Enter text"
        item_searchname.keyboardType = .default
        item_searchname.returnKeyType = .done
        
        
        view3.backgroundColor = UIColor.gray
        
        
        text_searchView.center = self.view4.center
        text_searchView.textAlignment = NSTextAlignment.justified
        text_searchView.textColor = UIColor.black
        text_searchView.backgroundColor = UIColor.white
        
        
        
        let btn_back:UIButton = UIButton(frame: CGRect(x: 100, y: 500, width: 200, height: 40))
        btn_back.setTitle("Back", for: UIControlState.normal)
        btn_back.layer.cornerRadius = 20.0
        btn_back.layer.borderColor = UIColor.red.cgColor
        btn_back.layer.borderWidth = 2.0
        btn_back.backgroundColor = UIColor.brown
        btn_back.addTarget(self, action: #selector(self.back(sender:)), for: .touchUpInside)
        
        
        btn_search_wishlist.setTitle("Search", for: UIControlState.normal)
        btn_search_wishlist.layer.cornerRadius = 20.0
        btn_search_wishlist.layer.borderColor = UIColor.red.cgColor
        btn_search_wishlist.layer.borderWidth = 2.0
        btn_search_wishlist.backgroundColor = UIColor.brown
        btn_search_wishlist.addTarget(self, action: #selector(self.search_wishlist(sender:)), for: .touchUpInside)
        
        view3.addSubview(item_name)
        view3.addSubview(item_searchname)
        view3.addSubview(text_searchView)
        view3.addSubview(btn_back)
        view3.addSubview(btn_search_wishlist)
        
        
        window?.addSubview(view3)
    }
    
    
    func search_wishlist(sender: UIButton!){
       
       text_searchView.text = ""
        if (item_searchname.text == ""){
            showAlert(message: "Please enter Item Name")
        }
            
        else{
        
        if( main_wishlist.arr_wishlist.isEmpty)
                {
                    showAlert(message: "wishlist is empty");
                    item_searchname.text = ""
                    text_searchView.text = ""
                }
                else
                {
                   
                    var xAppears = false
                    for item in main_wishlist.arr_wishlist{
                        if(item_searchname.text == item.itemName){
                            xAppears = true
                           text_searchView.text = text_searchView.text + "\n" + "Itemname:" + item.itemName + " " + "ItemPrice:" + String(item.itemPrice) +  " " + "ItemType:" + item.type.name
        
                        }
                    }
            if (!(xAppears))
              {
                            showAlert(message:"The item is not found in wishlist");
                            item_searchname.text = ""
                            text_searchView.text = ""
                        }
                        
                    }
            
        }

        
    }
    
    func list(sender: UIButton!) {
        DynamicView.isHidden = true;
        view4.backgroundColor = UIColor.gray
        
        let textView = UITextView(frame: CGRect(x: 20, y: 10, width: 250, height: 100))
        textView.center = self.view4.center
        textView.textAlignment = NSTextAlignment.justified
        textView.textColor = UIColor.black
        textView.backgroundColor = UIColor.white
        
        let rect:CGRect = CGRect(x: 0, y: 1, width: 200, height: 20)
        let label:UILabel = UILabel(frame: rect)
        label.text=" Items in Wishlist \n"
        textView.addSubview(label)
        
        let btn_back:UIButton = UIButton(frame: CGRect(x: 100, y: 500, width: 200, height: 40))
        btn_back.setTitle("Back", for: UIControlState.normal)
        btn_back.layer.cornerRadius = 20.0
        btn_back.layer.borderColor = UIColor.red.cgColor
        btn_back.layer.borderWidth = 2.0
        btn_back.backgroundColor = UIColor.brown
        btn_back.addTarget(self, action: #selector(self.back(sender:)), for: .touchUpInside)
        
        
      
        
       
        
          if(main_wishlist.arr_wishlist.isEmpty)
            {
                textView.text = " \n wishlist is empty"
            }
            else
            {
                print("List of items in wishlist")
                for item in main_wishlist.arr_wishlist{
                    print(item.itemName, item.itemPrice, item.type.name)
                    
                  textView.text = textView.text + "\n" + "Itemname:" + item.itemName + " " + "ItemPrice:" + String(item.itemPrice) +  " " + "ItemType:" + item.type.name                }
            }

        view4.addSubview(textView)
        view4.addSubview(btn_back)
        window?.addSubview(view4)
        
    }
    
    func back(sender: UIButton!) {
        DynamicView.isHidden = false;
        text_searchView.text = ""
        item_searchname.text = ""
        window?.addSubview(DynamicView)
    }

    
    

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

