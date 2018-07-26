//
//  Product.swift
//  coder-swagUITests
//
//  Created by iOS developer on 7/23/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import XCTest

class Product {
    
    static var shirtBackButton: XCUIElement {
        return HostApplication.navigationBars["SHIRTS"].buttons["CODER SWAG"]
    }
   static var hoodiesBackButton: XCUIElement {
        return HostApplication.navigationBars["HOODIES"].buttons["CODER SWAG"]
    }
    static var hatBackButton: XCUIElement {
        return HostApplication.navigationBars["HATS"].buttons["CODER SWAG"]
    }
    static var digitalBackButton : XCUIElement {
        return HostApplication.navigationBars["DIGITAL"].buttons["CODER SWAG"]
    }
    
   static var collectionViewShirt : XCUIElement {
        let cellsQuery = HostApplication.collectionViews.cells
        return cellsQuery.otherElements.containing(.image, identifier: "shirt01").element
    }
    
    public static var collectionViewHoodies: XCUIElement {
        let cellsQuery = HostApplication.collectionViews.cells
        return cellsQuery.otherElements.containing(.image, identifier: "hoodie01.png").element
    }
    public static var collectionViewHat: XCUIElement {
        let cellsQuery = HostApplication.collectionViews.cells
        return cellsQuery.otherElements.containing(.image, identifier: "hat01.png").element
    }
    public static var collectionViewDigital : XCUIElement {
        let cellsQuery = HostApplication.collectionViews.cells
        return cellsQuery.element
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
    
    
    static func tapCollectionViewShirt() {
        collectionViewShirt.tap()
    }
    static func tapCollectionViewHoodies() {
        collectionViewHoodies.tap()
    }
    static func tapCollectionViewHat() {
        collectionViewHat.tap()
    }
    static func tapCollectionViewDigital() {
        collectionViewDigital.tap()
    }
    
}
