//
//  UITestingOfTableViewUITests.swift
//  UITestingOfTableViewUITests
//
//  Created by iOS developer on 7/12/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import XCTest

class UITestingOfTableViewUITests: XCTestCase {
        
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
        
        let app = XCUIApplication()
        app.buttons["Get Table"].tap()
        
        let tablesQuery = app.tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["This is row No 5"]/*[[".cells.staticTexts[\"This is row No 5\"]",".staticTexts[\"This is row No 5\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["This is row No 6"]/*[[".cells.staticTexts[\"This is row No 6\"]",".staticTexts[\"This is row No 6\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeDown()
        app.otherElements.containing(.button, identifier:"Get Table").children(matching: .table).element/*@START_MENU_TOKEN@*/.swipeRight()/*[[".swipeUp()",".swipeRight()"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func testTableViewApp() {
        
        let app = XCUIApplication()
        XCTAssertEqual(app.tables.count, 1)
        XCTAssertEqual(app.buttons.count, 1)
        
        let table = app.tables.element(boundBy: 0)
        XCTAssertEqual(table.cells.count, 0)
      
        
        app.buttons["Get Table"].tap()
      
      //  XCTAssertEqual(app.tables.count, 10)
        
       
    }
    
}
