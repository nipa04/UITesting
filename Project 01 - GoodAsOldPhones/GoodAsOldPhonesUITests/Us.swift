//
//  Us.swift
//  GoodAsOldPhonesUITests
//
//  Created by iOS developer on 7/31/18.
//  Copyright © 2018 Code School. All rights reserved.
//

import Foundation
import XCTest

class Us {
    
    static var headerContactView : XCUIElement {
        return GaopApplication.scrollViews.containing(.image, identifier: "header-contact").element
    }
    
    static func tapHeaderContactView() {
        headerContactView.tap()
    }
    
    static func swipeUpHeaderContactView() {
        headerContactView.swipeUp()
    }
    
    static func swipeDownHeaderContactView() {
        headerContactView.swipeDown()
    }
    
}

