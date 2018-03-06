//
//  ViewController.swift
//  Coder-Swag
//
//  Created by Saivishal Gummadi on 2/26/18.
//  Copyright © 2018 ReverseEngineering. All rights reserved.
//

import UIKit

class categoryVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var categoryTable: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.delegate = self
        categoryTable.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataServices.instance.getCategory().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Categorycell") as? CategoryCell {
            let catogery = DataServices.instance.getCategory() [indexPath.row]
            cell.updateViews(category: catogery)
            return cell
        } else {
            return CategoryCell()
        }
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let catogery = DataServices.instance.getCategory() [indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: catogery)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductViewController {
            let barButton = UIBarButtonItem()
            barButton.title = " "
            navigationItem.backBarButtonItem = barButton
            assert(sender as? Category != nil)
            productsVC.initproduct(category: sender as! Category)
        }
    }
}

