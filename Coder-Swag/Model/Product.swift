//
//  Product.swift
//  Coder-Swag
//
//  Created by Saivishal Gummadi on 3/6/18.
//  Copyright © 2018 ReverseEngineering. All rights reserved.
//

import Foundation
struct Product {
    private(set) public var price: String
    private(set) public var imageName: String
    private(set) public var title: String
    
    init(price: String, imageName: String, title: String) {
        self.imageName = imageName
        self.title = title
        self.price = price
    }
}
