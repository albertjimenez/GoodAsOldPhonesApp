//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Albert Jiménez Fuentes on 27/12/16.
//  Copyright © 2016 es.uji. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var productsNamesArray : [Product]?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let prod1 = Product(name: "iphone 2G", productImage: "i2")
        let prod2 = Product(name: "iphone 3G", productImage: "i3")
        let prod3 = Product(name: "iphone 4G", productImage: "i4")
        let prod4 = Product(name: "iphone 5", productImage: "i5")
        productsNamesArray = [prod1,prod2,prod3,prod4]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return productsNamesArray != nil ? productsNamesArray!.count : 0 //Awesome Code
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        //cell.textLabel?.text = "Hi there" //rembember ? means an optional check var w/o ifs
        
        
        
        guard let pbName = productsNamesArray?[indexPath.row]
            else {
                return cell
        }
        cell.imageView?.image = UIImage(named: pbName.cellImage!)
        cell.textLabel?.text = pbName.name
        
        return cell
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destination as? ProductViewController
            
            
            //Notice that you're instantiating an object class ProdudctViewController
            //and accessing into the variables inside it!!!!
            
            
            //To access the component that trigger the event you need to cast sender
            
            
            
            guard let cell = sender as? UITableViewCell,
                let index = tableView.indexPath(for: cell)
                else{
                    return //not return anything, it stops right here (void)
            }
            
            productVC?.productCurrent = productsNamesArray?[index.row]
            
            
            
            
            //   productVC?.imageName = #imageLiteral(resourceName: "phone-1459352_640")
        }
    }
    
}
