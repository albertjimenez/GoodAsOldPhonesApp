//
//  ContactViewController.swift
//  GoodAsOldPhones
//
//  Created by Albert Jiménez Fuentes on 27/12/16.
//  Copyright © 2016 es.uji. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scrollViewController: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollViewController) //attach scrollView to MainView
        
    }
    override func viewWillLayoutSubviews() {
        //This function is needed for set the maximum scroll view size
        //super.viewWillLayoutSubviews()
     
        scrollViewController.contentSize = CGSize(width: 350, height: 800)
    }

    
}
