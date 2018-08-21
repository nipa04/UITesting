//
//  HitListTestCases.swift
//  HitListUITest
//
//  Created by iOS developer on 8/21/18.
//  Copyright © 2018 YiGu. All rights reserved.
//

import Foundation
import XCTest

class HitListTestCases : HitListUITestBase {
    
    func testAddButton() {
        ListButtons.tapAddButton()
        let newNameAlert = HitListApp.alerts["New Name"]
        newNameAlert.typeText("Farjana")
        ListButtons.tapSaveButton()
    }
    
    func testSaveButton() {
        ListButtons.tapAddButton()
        let newNameAlert = HitListApp.alerts["New Name"]
        newNameAlert.typeText("Nira")
        ListButtons.tapSaveButton()
    }
    
    func testCancelButton() {
        ListButtons.tapAddButton()
        ListButtons.tapCancelButton()
    }


func testExample() {
    
    let app = XCUIApplication()
    let tablesQuery = app.tables
    tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["nipa"]/*[[".cells.staticTexts[\"nipa\"]",".staticTexts[\"nipa\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["tumpa"]/*[[".cells.staticTexts[\"tumpa\"]",".staticTexts[\"tumpa\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["shohag"]/*[[".cells.staticTexts[\"shohag\"]",".staticTexts[\"shohag\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    app.navigationBars["The List"].buttons["Add"].tap()
    
    let newNameAlert = app.alerts["New Name"]
    let textField = newNameAlert.collectionViews.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 1).children(matching: .textField).element
    textField.tap()
    textField.typeText("fahja")
    newNameAlert.buttons["Save"].tap()
   

}
}
