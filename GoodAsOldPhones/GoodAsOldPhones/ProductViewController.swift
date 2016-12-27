//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Albert Jiménez Fuentes on 27/12/16.
//  Copyright © 2016 es.uji. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    var productCurrent : Product?
    
    override func viewDidLoad() { //Oncreate function Android
        super.viewDidLoad()
        
        //productNameLabel.text = "1937 Phones"
        //imageView.image = UIImage(named: "Telephone")
        //Fast assignment to image with Image Literal
        //imageView.image = #imageLiteral(resourceName: "Telephone")
        
        productNameLabel.text = productCurrent?.name
        //TODO check unwrapping
        imageView.image = UIImage(named: (productCurrent?.productImage)!)
        
        
        
        
    }
    @IBAction func addToCart(_ sender: AnyObject) {
        
        
        
        let alertController = UIAlertController(title: "Information", message: (productCurrent?.name)! + " (Demo) Added to the basket" , preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (result : UIAlertAction) -> Void in
            print("OK")
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
        
    }
    @IBAction func contactAction(_ sender: AnyObject) {
        
        showConsole()
        self.performSegue(withIdentifier: "segueContact", sender: nil)
        
    }
    
    
    
    
    func showConsole() {
        print(productCurrent?.name)
    }
    
    
}
