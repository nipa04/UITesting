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
    
    static var tabBarProducts: XCUIElement {
        return GaopApplication.tabBars.buttons["Products"]
    }
    static var tabBarUs : XCUIElement {
        return GaopApplication.tabBars.buttons["Us"]
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
    static func tapProducts() {
        tabBarProducts.tap()
    }
    static func tapUs() {
        tabBarUs.tap()
    }
    
    
    
}
