//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Albert Jiménez Fuentes on 27/12/16.
//  Copyright © 2016 es.uji. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        cell.textLabel?.text = "Hi there" //rembember ? means an optional check var w/o ifs
        cell.imageView?.image = #imageLiteral(resourceName: "MetroUI-Folder-OS-OS-Apple-icon")
        return cell
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destination as? ProductViewController
            
            
            //Notice that you're instantiating an object class ProdudctViewController
            //and accessing into the variables inside it!!!!
            productVC?.productName = "old iPhone"
         //   productVC?.imageName = #imageLiteral(resourceName: "phone-1459352_640")
        }
    }

}
