//
//  ProductView.swift
//  GoodAsOldPhonesUITests
//
//  Created by iOS developer on 7/30/18.
//  Copyright © 2018 Code School. All rights reserved.
//

import Foundation
import XCTest

class ProductsView {
    
    static var backButton: XCUIElement {
        return GaopApplication.navigationBars["GoodAsOldPhones.ProductView"].buttons["Back"]
    }

    static func tapBackButton() {
        backButton.tap()
    }
}
