//
//  CandyType.swift
//  CandySearchUITests
//
//  Created by iOS developer on 8/14/18.
//  Copyright © 2018 Peartree Developers. All rights reserved.
//

import Foundation
import XCTest

enum CandyType : String {
    case backButtonChocolateBar = "Chocolate Bar"
    case backButoonChocolateChip = "Chocolate Chip"
    case backButtonDarkChocolate = "Dark Chocolate"
    case backButtonLollipop = "Lollipop"
    case backButtonCandyCane = "Candy Cane"
    case backButtonJawBreaker = "Jaw Breaker"
    case backButtonCaramel = "Caramel"
    case backButtonSourChew = "Sour Chew"
    case backButtonGummiBear = "Gummi Bear"
}

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
    static func backButtonChocolateBar() {
       CandyType.backButtonChocolateBar.element.tap()
    }
    static func backButtonChocolateChip() {
        CandyType.backButoonChocolateChip.element.tap()
    }
    static func backButtonDarkChocolate() {
        CandyType.backButtonDarkChocolate.element.tap()
    }
    
    static func backButtonLollipop() {
       CandyType.backButtonLollipop.element.tap()
    }
    static func backButtonCandyCane() {
        CandyType.backButtonCandyCane.element.tap()
    }
    static func backButtonJawBreaker() {
        CandyType.backButtonJawBreaker.element.tap()
    }
    
    static func backButtonCaramel() {
        CandyType.backButtonCaramel.element.tap()
    }
    
    static func backButtonSourChew() {
        CandyType.backButtonSourChew.element.tap()
    }
    static func backButtonGummiBear() {
        CandyType.backButtonGummiBear.element.tap()
    }
}
    

