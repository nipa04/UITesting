//
//  File.swift
//  CandySearchUITests
//
//  Created by iOS developer on 8/14/18.
//  Copyright © 2018 Peartree Developers. All rights reserved.
//

import XCTest

extension CandySearchIdentifier: XCUIIdentifiable {
    
    var identifier: String {
        return self.rawValue
    }
    
    var element: XCUIElement {
        return CandySearchApp.tables.staticTexts[self.identifier]
    }
    
    var elementExits: Bool {
        return self.element.waitForExistence(timeout: 5)
    }
}

class CandySearch {
    static func tapChocolateBar() {
        CandySearchIdentifier.tableOfChocolateBar.element.tap()
    }
    static func tapChocolateChip() {
        CandySearchIdentifier.tableOfChocolateChip.element.tap()
    }
    static func tapDarkChocolate() {
        CandySearchIdentifier.tableOfDarkChocolate.element.tap()
    }
    static func tapLollipop() {
        CandySearchIdentifier.tableOfLollipop.element.tap()
    }
    static func tapCandyCane() {
        CandySearchIdentifier.tableOfCandyCane.element.tap()
    }
    static func tapJawBreaker() {
        CandySearchIdentifier.tableOfJawBreaker.element.tap()
    }
    static func tapCaramel() {
        CandySearchIdentifier.tableOfCaramel.element.tap()
    }
    static func tapSourChew(){
        CandySearchIdentifier.tableOfSourChew.element.tap()
    }
    static func tapGummiBear() {
        CandySearchIdentifier.tableOfGummiBear.element.tap()
    }
}


enum CandyButtons : String {
    case allButton = "All"
    case chocolateButton =  "Chocolate"
    case hardButton = "Hard"
    case otherButton = "Other"
    case cancelButton = "Cancel"
}

extension CandyButtons: XCUIIdentifiable {
    
    var identifier: String {
        return self.rawValue
    }
    
    var element: XCUIElement {
        return CandySearchApp.buttons[self.identifier]
    }
    
    var elementExits: Bool {
        return self.element.waitForExistence(timeout: 5)
    }
}

class CandyViewButtons {
    static func tapAllButton() {
        CandyButtons.allButton.element.tap()
    }
    static func tapChocolateButton() {
        CandyButtons.chocolateButton.element.tap()
    }
    static func tapHardButton() {
        CandyButtons.hardButton.element.tap()
    }
    static func tapOtherButton() {
        CandyButtons.otherButton.element.tap()
    }
    static func tapCancelButton() {
        CandyButtons.cancelButton.element.tap()
    }
}




