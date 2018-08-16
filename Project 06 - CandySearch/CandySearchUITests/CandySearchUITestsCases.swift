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
        CandyDetailView.tapBackButtonChocolateBar()
     
    }
    
    func testTableOfChocolateChip() {
        CandySearch.tapChocolateChip()
        CandyDetailView.tapBackButtonChocolateChip()
    }
    
    func testTableOfDarkChocolate() {
        CandySearch.tapDarkChocolate()
        CandyDetailView.tapBackButtonDarkChocolate()
    }
    
    func testTableOfLollipop() {
        CandySearch.tapLollipop()
        CandyDetailView.tapBackButtonLollipop()
    }
    
    func testTableOfSourChew() {
        CandySearch.tapSourChew()
        CandyDetailView.tapBackButtonSourChew()
    }
    
    func testTableOfCaramel() {
        CandySearch.tapCaramel()
        let exits = CandyType.backButtonCaramel.elementExits
        XCTAssertTrue(exits, "Does not exits")
    }
    
    func testTableOfGummiBear() {
        CandySearch.tapGummiBear()
        CandyDetailView.tapBackButtonGummiBear()

    }
    
    func testTableOfCandyCane() {
        CandySearch.tapCandyCane()
        CandyDetailView.tapBackButtonCandyCane()
    }
    
    func testTableOfJawBreaker() {
        CandySearch.tapJawBreaker()
        CandyDetailView.tapBackButtonJawBreaker()
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
        searchField.typeText("Choco")
        CandyButtonsView.tapCancelButton()
        let exits = CandySearchIdentifier.tableOfCaramel.elementExits
        XCTAssertTrue(exits, "Not Exits")
    }
    
    func testSearchField() {
        let searchField = CandySearchApp.searchFields["Search"]
        searchField.tap()
        searchField.typeText("Chocolate")
        let exits = CandySearchIdentifier.tableOfChocolateChip.elementExits
        XCTAssertTrue(exits, "Does not exits")
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
