//
//  GAOPUITestCases.swift
//  GoodAsOldPhonesUITests
//
//  Created by iOS developer on 7/30/18.
//  Copyright © 2018 Code School. All rights reserved.
//

import XCTest

class GAOPUITestCases: GAOPUITestsBase {
        

    func testWallSet() {
        Products.tapWallSet()
        let exits = Products.tableWallSet.exists
        XCTAssertTrue(exits, "Doesn't exits" )

//        let app = XCUIApplication()
//        app.tables/*@START_MENU_TOKEN@*/.staticTexts["1907 Wall Set"]/*[[".cells.staticTexts[\"1907 Wall Set\"]",".staticTexts[\"1907 Wall Set\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        app.navigationBars["GoodAsOldPhones.ProductView"].buttons["Back"].tap()
//
    }
    
    func testDialPhone() {
        Products.tapDialPhone()
        let exits = Products.tableDialPhone.exists
        XCTAssertTrue(exits, "Doesn't exits")
    }
    
    func testDeskSet() {
        Products.tapDeskSet()
        let exits = Products.tableDeskSet.exists
        XCTAssertTrue(exits, "Doesn't exits")
    }
    func testMotoPortable() {
        Products.tapMotoPortable()
        let exits = Products.tableMotoPortable.exists
        XCTAssertTrue(exits, "Doesn't exits")
    }
    func testPageLoaded() {
       Products.pageLoaded()
        Products.tableDialPhone
        XCTAssertTrue(Products.tapPageLoaded(), "Page is not loading")
    }
    
    func testExample() {
        
        let app = XCUIApplication()
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["1907 Wall Set"]/*[[".cells.staticTexts[\"1907 Wall Set\"]",".staticTexts[\"1907 Wall Set\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let backButton = app.navigationBars["GoodAsOldPhones.ProductView"].buttons["Back"]
        backButton.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["1921 Dial Phone"]/*[[".cells.staticTexts[\"1921 Dial Phone\"]",".staticTexts[\"1921 Dial Phone\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        backButton.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["1937 Desk Set"]/*[[".cells.staticTexts[\"1937 Desk Set\"]",".staticTexts[\"1937 Desk Set\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        backButton.tap()
        
    }
    
}
