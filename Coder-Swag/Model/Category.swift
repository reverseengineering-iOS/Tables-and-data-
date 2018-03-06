//
//  category.swift
//  Coder-Swag
//
//  Created by Saivishal Gummadi on 3/5/18.
//  Copyright © 2018 ReverseEngineering. All rights reserved.
//

import Foundation

struct Category {
  private (set)  public var title: String
  private (set) public var imageName: String
    
    init(title: String, imageName: String) {
     self.title = title
     self.imageName = imageName
    }
}
