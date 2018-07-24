//
//  Product.swift
//  coder-swagUITests
//
//  Created by iOS developer on 7/23/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import XCTest

class Product {
    
    private static var shirtBackButton: XCUIElement {
        return HostApplication.navigationBars["SHIRTS"].buttons["CODER SWAG"]
    }
    private static var hoodiesBackButton: XCUIElement {
        return HostApplication.navigationBars["HOODIES"].buttons["CODER SWAG"]
    }
    private static var hatBackButton: XCUIElement {
        return HostApplication.navigationBars["HATS"].buttons["CODER SWAG"]
    }
    private static var digitalBackButton : XCUIElement {
        return HostApplication.navigationBars.staticTexts["DIGITALS"].buttons["CODER SWAG"]
    }
    
    

    static func shirtBack() {
        shirtBackButton.tap()
    }
    
    static func hoodiesBack() {
        hoodiesBackButton.tap()
    }
    static func hatBack(){
        hatBackButton.tap()
    }
    static func digitalBack() {
        digitalBackButton.tap()
    }
    
}
