//
//  CategoryCell.swift
//  coder-swag
//
//  Created by iOS developer on 6/14/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage : UIImageView!
    @IBOutlet weak var catergoryTitle : UILabel!
    
    func updateViews(category :Category) {
        categoryImage.image = UIImage(named : category.imageName)
        catergoryTitle.text = category.title
    }
}
