//
//  CSUITestCase.swift
//  coder-swagUITests
//
//  Created by iOS developer on 7/23/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import XCTest

class CSUITestCases: CSUITestBase {
    
    let app = XCUIApplication()

    func testTableViewCellOfShirts(){
        let tablesQuery = app.tables.staticTexts["SHIRTS"]
        tablesQuery.swipeDown()
        tablesQuery.swipeUp()
        tablesQuery.tap()
        app.navigationBars["SHIRTS"].buttons["CODER SWAG"].tap()
        app.terminate()
    }
   func testTableViewCellOfHoodies() {
        let tablesQuery = app.tables.staticTexts["HOODIES"]
        tablesQuery.tap()
        app.navigationBars["HOODIES"].buttons["CODER SWAG"].tap()
        app.terminate()
    }
    func testTableViewCellOfHats() {
        let tablesQuery = app.tables.staticTexts["HATS"]
        tablesQuery.tap()
        app.navigationBars["HATS"].buttons["CODER SWAG"].tap()
    }
    func testTableViewCellOfDigital(){
        let tablesQuery = app.tables.staticTexts["DIGITAL"]
        tablesQuery.tap()
        app.navigationBars["DIGITAL"].buttons["CODER SWAG"].tap()
    }
    func testCollectionViewCellofShirts() {
        
        app.tables.staticTexts["SHIRTS"].tap()
        let cellsQuery = app.collectionViews.cells
        cellsQuery.otherElements.containing(.image, identifier:"shirt01").element.tap()
        cellsQuery.otherElements.containing(.image, identifier:"shirt02.png").element.tap()
        app.navigationBars["SHIRTS"].buttons["CODER SWAG"].tap()
      
    }
    func testCollectionViewCellOfHoodies() {
        app.tables.staticTexts["HOODIES"].tap()
        let cellsQuery = app.collectionViews.cells
        cellsQuery.otherElements.containing(.image, identifier: "hoodie01.png").element.tap()
        cellsQuery.otherElements.containing(.image, identifier: "hoodie02.png").element.tap()
    }
    func testCollectionViewCellOfHats() {
        app.tables.staticTexts["HATS"].tap()
        let cellsQuery = app.collectionViews.cells
        cellsQuery.otherElements.containing(.image, identifier: "hat01.png").element.tap()
    }
}

