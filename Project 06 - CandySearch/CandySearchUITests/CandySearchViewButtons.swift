//
//  File.swift
//  CandySearchUITests
//
//  Created by iOS developer on 8/16/18.
//  Copyright © 2018 Peartree Developers. All rights reserved.
//

import Foundation
import XCTest


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

class CandyButtonsView {
    
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
