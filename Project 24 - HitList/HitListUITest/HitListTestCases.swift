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
        app.navigationBars["The List"].buttons["Add"].tap()
        
        let newNameAlert = app.alerts["New Name"]
        newNameAlert.collectionViews.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 1).children(matching: .textField).element.typeText("Frasas")
        newNameAlert.buttons["Save"].tap()
                
    }
}
