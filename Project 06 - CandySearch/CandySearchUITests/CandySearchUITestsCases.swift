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
        CandyButtonsView.tapAllButton()
    }
    
    func testHardButton() {
        CandyButtonsView.tapHardButton()
    }
    
    func testCancelButton() {
        CandyButtonsView.tapCancelButton()
        let exits = CandySearchIdentifier.tableOfCaramel.elementExits
        XCTAssertTrue(exits, "Not Exits")
    }

    
func testExample() {
    
    
    
   
}
    
    
}
