//
//  ProductViewController.swift
//  Coder-Swag
//
//  Created by Saivishal Gummadi on 3/6/18.
//  Copyright © 2018 ReverseEngineering. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
   
    @IBOutlet weak var productCollection: UICollectionView!

    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       productCollection.dataSource = self
        productCollection.delegate = self
    }

    func initproduct(category: Category) {
        products = DataServices.instance.getProduct(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        
        return ProductCell()
    }
}
