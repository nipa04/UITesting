//
//  File.swift
//  HitListUITest
//
//  Created by iOS developer on 8/21/18.
//  Copyright © 2018 YiGu. All rights reserved.
//

import Foundation
import XCTest

extension HitListButtons: UIElement {
    
    var identifier : String {
        return self.rawValue
    }
    
    var element : XCUIElement {
        switch self {
        case .addButton :
            return HitListApp.navigationBars["The List"].buttons[self.identifier]
        case .saveButton:
            return HitListApp.navigationBars["The List"].alerts.buttons[self.identifier]
        case .cancelButton:
            return HitListApp.navigationBars["The List"].alerts.buttons[self.identifier]
        }
    }
    
    var elementExits : Bool {
        return self.element.waitForExistence(timeout: 5)
    }
    
}

class ListButtons {
    static func tapAddButton() {
        HitListButtons.addButton.element.tap()
    }
    static func tapSaveButton() {
        HitListButtons.saveButton.element.tap()
    }
    static func tapCancelButton() {
        HitListButtons.cancelButton.element.tap()
    }
    
}
