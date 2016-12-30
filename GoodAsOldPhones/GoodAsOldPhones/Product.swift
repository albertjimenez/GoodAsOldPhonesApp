//
//  Product.swift
//  GoodAsOldPhones
//
//  Created by Albert Jiménez Fuentes on 27/12/16.
//  Copyright © 2016 es.uji. All rights reserved.
//

import Foundation
import CoreData

class Product {
    
    var name : String?
    var productImage : String?
    var cellImage  : String?
    
    init(name : String, productImage : String = "Telephone", cellImage: String = "phone-1459352_640") {
        self.name = name
        self.productImage = productImage
        self.cellImage = cellImage
    }
}
