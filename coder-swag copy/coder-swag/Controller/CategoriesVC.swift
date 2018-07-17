//
//  ViewController.swift
//  coder-swag
//
//  Created by iOS developer on 6/14/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController , UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    
    // MARK:
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    // MARK:
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return DataService.instance.getCategories().count
    }
    
    // MARK:
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }
        else {
            return CategoryCell()
        }
    }
    
    // MARK:
    func tableView(_ tableView: UITableView , didSelectRowAt indexPath : IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    // MARK:
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let productsVC = segue.destination as? ProductsVC {
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender as! Category)
        }
    }

}

