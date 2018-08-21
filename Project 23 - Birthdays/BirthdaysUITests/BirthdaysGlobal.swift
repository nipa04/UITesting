//
//  BirthdaysGlobal.swift
//  BirthdaysUITests
//
//  Created by iOS developer on 8/20/18.
//  Copyright © 2018 Appcoda. All rights reserved.
//

import Foundation
import XCTest

let BirthdaysApp = XCUIApplication()

protocol XCUIdentifiable {
    var identifier: String {get}
    var element : XCUIElement {get}
    var elementExits : Bool {get}
}
