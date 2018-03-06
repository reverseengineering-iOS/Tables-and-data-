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
    
    private let hoodies = [
        Product(price: "$32", imageName: "hoodie01.png", title: "Devslopes Logo Hoodie Grey"),
        Product(price: "$32", imageName: "hoodie02.png", title: "Devslopes Logo Hoodie Red"),
        Product(price: "$32", imageName: "hoodie03.png", title: "Devslopes Hoodie Grey"),
        Product(price: "$32", imageName: "hoodie04.png", title: "Devslopes Hoodie Black")
    ]
    
    private let shirt = [
        Product(price: "$18", imageName: "shirt01.png", title: "Devslopes Logo Shirt Black"),
        Product(price: "$19", imageName: "shirt02.png", title: "Devslopes Badge Shirt Light Grey"),
        Product(price: "$18", imageName: "shirt03.png", title: "Devslopes Logo Shirt Red"),
        Product(price: "$18", imageName: "shirt04.png", title: "Hustle Delegate Grey"),
        Product(price: "$18", imageName: "shirt05.png", title: "Kickflip Studios Black")
    ]
    
    private let hats = [
        Product(price: "$18", imageName: "hat01.png", title: "Devslopes Logo Graphic Benie"),
        Product(price: "$22", imageName: "hat01.png", title: "Devslopes Logo Graphic Benie"),
        Product(price: "$22", imageName: "hat01.png", title: "Devslopes Logo Graphic Benie"),
        Product(price: "$20", imageName: "hat01.png", title: "Devslopes Logo Graphic Benie")
    ]
    private let digitalGoods = [Product]()
    
    func getCategory () -> [Category] {
        return category
    }
    
    func getProduct(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "HATS":
            return  getHats()
        case "HODIES":
            return getHoodies()
        case "SHIRTS":
            return getShirts()
        case "DIGITAL":
            return  getDigitalGoods()
        default:
            return  getShirts()
        }
    }
    func getHats() -> [Product] {
        return  hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    func getShirts() -> [Product] {
        return shirt
    }
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
