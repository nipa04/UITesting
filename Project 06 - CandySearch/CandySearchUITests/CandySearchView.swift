//
//  File.swift
//  CandySearchUITests
//
//  Created by iOS developer on 8/14/18.
//  Copyright © 2018 Peartree Developers. All rights reserved.
//
import Foundation
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





