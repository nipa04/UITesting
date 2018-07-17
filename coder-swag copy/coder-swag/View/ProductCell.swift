//
//  ProductCell.swift
//  coder-swag
//
//  Created by iOS developer on 6/14/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage : UIImageView!
    @IBOutlet weak var productTitle : UILabel!
    @IBOutlet weak var productPrice: UILabel!
   
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}
