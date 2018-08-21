//
//  HitListGlobal.swift
//  HitListUITest
//
//  Created by iOS developer on 8/21/18.
//  Copyright © 2018 YiGu. All rights reserved.
//

import Foundation
import XCTest

let HitListApp = XCUIApplication()

protocol UIElement {
    var identifier : String {get}
    var element : XCUIElement {get}
    var elementExits :Bool {get}
}
