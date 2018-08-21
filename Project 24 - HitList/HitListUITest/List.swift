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


