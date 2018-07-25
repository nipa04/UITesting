//
//  Home.swift
//  coder-swagUITests
//
//  Created by iOS developer on 7/23/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import XCTest

class Category {
    
    static var tableShirtCell: XCUIElement {
        return HostApplication.tables.staticTexts["SHIRTS"]
    }
    static var tableHoodiesCell : XCUIElement {
        return HostApplication.tables.staticTexts["HOODIES"]
    }
    static var tableHatCell: XCUIElement {
        return HostApplication.tables.staticTexts["HATS"]
    }
    static var tableDigitalCell : XCUIElement{
        return HostApplication.tables.staticTexts["DIGITALS"]
    }
    private static var title: XCUIElement {
        return HostApplication.navigationBars["CODER SWAG"]
    }
    
    static func tapShirt() {
        tableShirtCell.tap()
    }
    static func tapHoodies() {
        tableHoodiesCell.tap()
    }
    
    static func tapHat() {
            tableHatCell.tap()
        }
    static func tapDigital() {
        tableDigitalCell.tap()
    }
   
    
    static func pageLoaded() -> Bool {
        return title.exists
    }
    
}

