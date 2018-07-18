//
//  coder_swagUITests.swift
//  coder-swagUITests
//
//  Created by iOS developer on 7/18/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import XCTest

class coder_swagUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let tablesQuery = app.tables
        let shirtsStaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["SHIRTS"]/*[[".cells.staticTexts[\"SHIRTS\"]",".staticTexts[\"SHIRTS\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        shirtsStaticText/*@START_MENU_TOKEN@*/.swipeRight()/*[[".swipeDown()",".swipeRight()"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        shirtsStaticText.tap()
        
        let cellsQuery = app.collectionViews.cells
        cellsQuery.otherElements.containing(.image, identifier:"shirt01").element.tap()
        app.navigationBars["SHIRTS"].buttons["CODER SWAG"].tap()
        
        let hatsStaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["HATS"]/*[[".cells.staticTexts[\"HATS\"]",".staticTexts[\"HATS\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        hatsStaticText.swipeUp()
        hatsStaticText.tap()
        app.navigationBars["HATS"].buttons["CODER SWAG"].tap()
        app.staticTexts["SHOP BY CATEGORY"].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["HOODIES"]/*[[".cells.staticTexts[\"HOODIES\"]",".staticTexts[\"HOODIES\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeDown()
        cellsQuery.otherElements.containing(.image, identifier:"hoodie04.png").element.tap()
        app.navigationBars["HOODIES"].buttons["CODER SWAG"].tap()
        
    }
    
}
