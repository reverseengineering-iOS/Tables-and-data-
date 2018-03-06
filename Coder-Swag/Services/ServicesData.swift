//
//  ServicesData.swift
//  Coder-Swag
//
//  Created by Saivishal Gummadi on 3/6/18.
//  Copyright © 2018 ReverseEngineering. All rights reserved.
//

import Foundation
class DataServices {
    
    static let instance = DataServices()
    
    private let category = [
        Category(title: "Hoodies", imageName: "hoodies.png"),
        Category(title: "Shirts", imageName: "shirts.png"),
        Category(title: "Hats", imageName: "hats.png"),
        Category(title: "Digital", imageName: "digital.png")
    ]
    
    func getCategory () -> [Category] {
        return category
    }
}
