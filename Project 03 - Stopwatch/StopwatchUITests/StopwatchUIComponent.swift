//
//  StopwatchUIComponent.swift
//  Stopwatch
//
//  Created by iOS developer on 8/9/18.
//  Copyright © 2018 YiGu. All rights reserved.
//

import XCTest

protocol UIComponent {
    var identifier: String      { get }
    var element: XCUIElement    { get }
    var elementExists: Bool     { get }
}
