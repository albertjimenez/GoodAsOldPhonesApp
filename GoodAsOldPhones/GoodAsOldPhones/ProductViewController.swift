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
    
    
    var productName :String?
    var imageName : UIImage?
    override func viewDidLoad() { //Oncreate function Android
        super.viewDidLoad()
        
        //productNameLabel.text = "1937 Phones"
        //imageView.image = UIImage(named: "Telephone")
        //Fast assignment to image with Image Literal
        //imageView.image = #imageLiteral(resourceName: "Telephone")
        
        
        productNameLabel.text = productName
        if imageName != nil {
            imageView.image = imageName
        }
        
    }
    @IBAction func addToCart(_ sender: AnyObject) {
        
        print("test button")
    }

    
}
