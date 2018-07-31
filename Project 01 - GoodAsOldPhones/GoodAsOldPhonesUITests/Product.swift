//
//  Category.swift
//  GoodAsOldPhonesUITests
//
//  Created by iOS developer on 7/30/18.
//  Copyright © 2018 Code School. All rights reserved.
//

import Foundation
import XCTest

class Products {
    
    static var tableWallSet: XCUIElement {
        return GaopApplication.tables.staticTexts["1907 Wall Set"]
}
    static var tableDialPhone : XCUIElement {
        return GaopApplication.tables.staticTexts["1921 Dial Phone"]
}
    static var tableDeskSet: XCUIElement {
        return GaopApplication.tables.staticTexts["1937 Desk Set"]
    }
    static var tableMotoPortable: XCUIElement {
         return GaopApplication.tables.staticTexts["1984 Moto Portable"]
    }
    
    static var Products: XCUIElement {
        return GaopApplication.navigationBars["Back"]
    }
    
    static func tapWallSet() {
        tableWallSet.tap()
    }
    static func tapDialPhone() {
         tableDialPhone.tap()
    }
    static func tapDeskSet() {
        tableDeskSet.tap()
    }
    static func tapMotoPortable() {
         tableMotoPortable.tap()
    }
    static func pageLoaded() -> Bool {
         return Products.exists
    }
    
}
