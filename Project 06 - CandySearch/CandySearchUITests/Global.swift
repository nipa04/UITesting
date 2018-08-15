//
//  global.swift
//  CandySearchUITests
//
//  Created by iOS developer on 8/14/18.
//  Copyright © 2018 Peartree Developers. All rights reserved.
//

import Foundation
import XCTest

let CandySearchApp = XCUIApplication()

protocol XCUIIdentifiable {
    var identifier : String {get}
    var element: XCUIElement {get}
    var elementExits : Bool {get}
}
