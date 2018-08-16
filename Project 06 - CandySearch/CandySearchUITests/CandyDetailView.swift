//
//  CandyType.swift
//  CandySearchUITests
//
//  Created by iOS developer on 8/14/18.
//  Copyright © 2018 Peartree Developers. All rights reserved.
//

import Foundation
import XCTest


extension CandyType: XCUIIdentifiable  {
    
    var identifier: String {
        return self.rawValue
    }
    
    var element : XCUIElement {
        switch self {
        case .backButtonChocolateBar:
            fallthrough
        case .backButoonChocolateChip:
            fallthrough
        case .backButtonDarkChocolate:
            return CandySearchApp.navigationBars["Chocolate"].buttons["Back"]
        case .backButtonLollipop:
            fallthrough
        case .backButtonCandyCane:
            fallthrough
        case .backButtonJawBreaker:
            return CandySearchApp.navigationBars["Hard"].buttons["Back"]
        case .backButtonCaramel:
            fallthrough
        case .backButtonSourChew:
            fallthrough
        case .backButtonGummiBear:
            return CandySearchApp.navigationBars["Other"].buttons["Back"]
        }
    }

    var elementExits: Bool {
        return self.element.waitForExistence(timeout: 5)
    }
}
    
class CandyDetailView {
    static func tapBackButtonChocolateBar() {
       CandyType.backButtonChocolateBar.element.tap()
    }
    static func tapBackButtonChocolateChip() {
        CandyType.backButoonChocolateChip.element.tap()
    }
    static func tapBackButtonDarkChocolate() {
        CandyType.backButtonDarkChocolate.element.tap()
    }
    static func tapBackButtonLollipop() {
       CandyType.backButtonLollipop.element.tap()
    }
    static func tapBackButtonCandyCane() {
        CandyType.backButtonCandyCane.element.tap()
    }
    static func tapBackButtonJawBreaker() {
        CandyType.backButtonJawBreaker.element.tap()
    }
    
    static func tapBackButtonCaramel() {
        CandyType.backButtonCaramel.element.tap()
    }
    
    static func tapBackButtonSourChew() {
        CandyType.backButtonSourChew.element.tap()
    }
    static func tapBackButtonGummiBear() {
        CandyType.backButtonGummiBear.element.tap()
    }
}
    

