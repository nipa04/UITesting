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
        XCTAssertFalse(exits, "Does exits" )

    }
    
    func testDialPhone() {
        Products.tapDialPhone()
        //let exits = Products.tableDialPhone.exists
        //XCTAssertTrue(exits, "Doesn't exits")
    }
    
    func testDeskSet() {
        Products.tapDeskSet()
        //let exits = Products.tableDeskSet.exists
       // XCTAssertTrue(exits, "Doesn't exits")
    }
    func testMotoPortable() {
        Products.tapMotoPortable()
       // let exits = Products.tableMotoPortable.exists
       // XCTAssertTrue(exits, "Doesn't exits")
    }
    func testPageLoaded() {
        Products.pageLoaded()
        Products.tapWallSet()
        XCTAssertFalse(Products.pageLoaded(), "Page is not loading")
    }
    
    func testBackButton() {
        Products.tapWallSet()
        ProductsView.tapBackButton()
    }
    func testBackButton2() {
        Products.tapDialPhone()
        ProductsView.tapBackButton()
    }
    
    func testBackButton3() {
        Products.tapDeskSet()
        ProductsView.tapBackButton()
    }
    func testBackBuuton3() {
        Products.tapMotoPortable()
        ProductsView.tapBackButton()
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
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["1984 Moto Portable"]/*[[".cells.staticTexts[\"1984 Moto Portable\"]",".staticTexts[\"1984 Moto Portable\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        backButton.tap()
        
        
    }
    
}
