//
//  CSUITestCase.swift
//  coder-swagUITests
//
//  Created by iOS developer on 7/23/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import XCTest

class HomePageTestCases: CSUITestBase {
    
    func testTableViewCellOfShirts(){
        Category.tapShirt()
        Product.shirtBack()
        XCTAssertTrue(Category.pageLoaded(), "Category page doesnot exist!")
//        let tablesQuery = HostApplication.tables.staticTexts["SHIRTS"]
//        tablesQuery.swipeDown()
//        tablesQuery.swipeUp()
//        tablesQuery.tap()
//        HostApplication.navigationBars["SHIRTS"].buttons["CODER SWAG"].tap()
        //HostApplication.terminate()
    }
    
    func testFindElementShirts() {
        let exists = Category.tableShirtCell.exists && Category.tableHatCell.exists && Category.tableHoodiesCell.exists && Category.tableDigitalCell.exists
        XCTAssertTrue(exists, "Doesn't exsit")
    }
    
   func testTableViewCellOfHoodies() {
        Category.tapHoodies()
        Product.hoodiesBack()
     
//        let tablesQuery = HostApplication.tables.staticTexts["HOODIES"]
//        tablesQuery.tap()
//        HostApplication.navigationBars["HOODIES"].buttons["CODER SWAG"].tap()
//        HostApplication.terminate()
    }
    func testTableViewCellOfHats() {
        Category.tapHat()
        Product.hatBack()
    
//        let tablesQuery = HostApplication.tables.staticTexts["HATS"]
//        tablesQuery.tap()
//        HostApplication.navigationBars["HATS"].buttons["CODER SWAG"].tap()
    }
    func testTableViewCellOfDigital(){
        Category.tapDigital()
        Product.digitalBack()
//        let tablesQuery = HostApplication.tables.staticTexts["DIGITAL"]
//        tablesQuery.tap()
//        HostApplication.navigationBars["DIGITAL"].buttons["CODER SWAG"].tap()
    }
    func testCollectionViewCellofShirts() {
        Category.tapShirt()
        Product.tapCollectionViewShirt()
        Product.shirtBack()
//        HostApplication.tables.staticTexts["SHIRTS"].tap()
//        let cellsQuery = HostApplication.collectionViews.cells
//        cellsQuery.otherElements.containing(.image, identifier:"shirt01").element.tap()
//        cellsQuery.otherElements.containing(.image, identifier:"shirt02.png").element.tap()
//        HostApplication.navigationBars["SHIRTS"].buttons["CODER SWAG"].tap()
      
    }
    func testCollectionViewCellOfHoodies() {
        Category.tapHoodies()
        Product.tapCollectionViewHoodies()
        Product.hoodiesBack()
//        HostApplication.tables.staticTexts["HOODIES"].tap()
//        let cellsQuery = HostApplication.collectionViews.cells
//        cellsQuery.otherElements.containing(.image, identifier: "hoodie01.png").element.tap()
//        cellsQuery.otherElements.containing(.image, identifier: "hoodie02.png").element.tap()
    }
    func testCollectionViewCellOfHats() {
        Category.tapHat()
        Product.tapCollectionViewHat()
        Product.hatBack()
        
//        HostApplication.tables.staticTexts["HATS"].tap()
//        let cellsQuery = HostApplication.collectionViews.cells
//        cellsQuery.otherElements.containing(.image, identifier: "hat01.png").element.tap()
   }
}

