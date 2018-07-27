//
//  Pages.swift
//  tableViewAppSamUITests
//
//  Created by iOS developer on 7/26/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import Foundation
import XCTest

class Table {
    static var tableOfIronMan : XCUIElement {
        return app.tables.staticTexts["Iron Man"]
    }
    static var tableOfSpiderMan : XCUIElement {
        return app.tables.staticTexts["Spider Man"]
    }
    static var tableOfBatMan : XCUIElement {
        return app.tables.staticTexts["BatMan"]
    }
    static var title : XCUIElement {
        return app.navigationBars["Movies"]
    }
    
    static func tapIronMan() {
        tableOfIronMan.tap()
    }
    
    static func tapSpiderMan () {
        tableOfSpiderMan.tap()
    }
    
    static func tapBatman() {
        tableOfBatMan.tap()
    }
    static func pageLoaded() -> Bool {
        return title.exists
    }

}
