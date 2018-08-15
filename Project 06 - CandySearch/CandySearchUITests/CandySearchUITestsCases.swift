//
//  CandySearchUITestsCases.swift
//  CandySearchUITests
//
//  Created by iOS developer on 8/14/18.
//  Copyright © 2018 Peartree Developers. All rights reserved.
//

import Foundation
import XCTest

class CandySearchUITestsCases : CandySearchUITestsBase {
    
    func testTableChocolateBar() {
        let exists = CandySearchIdentifier.tableOfChocolateBar.elementExits
        XCTAssertTrue( exists, "Does not exits")
        CandySearch.tapChocolateBar()
        CandyDetailView.backButtonChocolateBar()
     
    }
    
    func testTableOfChocolateChip() {
        CandySearch.tapChocolateChip()
        CandyDetailView.backButtonChocolateChip()
    }
    
    func testTableOfDarkChocolate() {
        CandySearch.tapDarkChocolate()
        CandyDetailView.backButtonDarkChocolate()
    }
    
    func testTableOfLollipop() {
        CandySearch.tapLollipop()
        CandyDetailView.backButtonLollipop()
    }
    
    func tesrTableOfSourChew() {
        CandySearch.tapSourChew()
        CandyDetailView.backButtonSourChew()
    }
    
    func testAllButton() {
        let searchField = CandySearchApp.searchFields["Search"]
        searchField.tap()
        CandyButtonsView.tapAllButton()
        searchField.typeText("All")
        CandyButtonsView.tapCancelButton()
        
    }
    
    func testOtherButton() {
        CandyButtonsView.tapOtherButton()
        let exits = CandySearchIdentifier.tableOfSourChew.elementExits
        XCTAssertTrue(exits ,"Does not exits")
        
    }
    
    func testHardButton() {
        CandyButtonsView.tapHardButton()
        let searchField = CandySearchApp.searchFields["Search"]
        searchField.tap()
        searchField.typeText("BLAHBLAH")
    }
    
    func testCancelButton() {
        let searchField = CandySearchApp.searchFields["Search"]
        searchField.tap()
        searchField.typeText("Hard")
        CandyButtonsView.tapCancelButton()
        let exits = CandySearchIdentifier.tableOfCaramel.elementExits
        XCTAssertTrue(exits, "Not Exits")
    }

    
func testExample() {
    
    let app = XCUIApplication()
    let searchSearchField = app.searchFields["Search"]
    searchSearchField.tap()
    searchSearchField.typeText("fdheffr")
    app.typeText("\r")
    app.buttons["Cancel"].tap()
    XCUIApplication().navigationBars["Master"].staticTexts.containing(.image, identifier:"Inline-Logo").element.tap()
   
}
    
    
}
