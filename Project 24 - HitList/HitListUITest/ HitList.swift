//
//  List.swift
//  HitListUITest
//
//  Created by iOS developer on 8/21/18.
//  Copyright © 2018 YiGu. All rights reserved.
//

import Foundation
import XCTest

extension HitListAccessibilityIdentifier : UIElement  {
    
    var identifier :String {
        return self.rawValue
    }
    
    var element : XCUIElement {
        return HitListApp.tables.staticTexts[self.identifier]
    }
    var elementExits : Bool {
        return self.element.waitForExistence(timeout: 5)
    }
    
}
class HitList() {
    
    static func tapTableOfNipa() {
        HitListAccessibilityIdentifier.tableOfNipa.element.tap()
    }
    static func tapTableOfTumpa() {
        HitListAccessibilityIdentifier.tableOfTumpa.element.tap()
    }
    static func tapTableOfShohag() {
        HitListAccessibilityIdentifier.tableOfShohag.element.tap()
    }
    
    static func tapTableOfAyman() {
        HitListAccessibilityIdentifier.tableOfAyman.element.tap()
    }
    
    static func tapTableOfHira() {
        HitListAccessibilityIdentifier.tableOfHira.element.tap()
    }
}

