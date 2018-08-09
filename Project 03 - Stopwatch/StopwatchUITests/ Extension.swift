//
//  StopwatchUITests.swift
//  StopwatchUITests
//
//  Created by iOS developer on 8/8/18.
//  Copyright © 2018 YiGu. All rights reserved.
//

import XCTest
//
//protocol UIComponent {
//    var identifier: String      { get }
//    var element: XCUIElement    { get }
//    var elementExists: Bool     { get }
//}
//
//enum AccessibilityIdentifier: String {
//    case startButton    = "stopWatchStartButton"
//    case lapButton      = "stopWatchLapButton"
//}

extension AccessibilityIdentifier: UIComponent {
    var identifier: String {
        return self.rawValue
    }
    
    var element: XCUIElement {
        switch self {
        case .startButton:
            return StopWatchApp.buttons[self.identifier]
        case .lapButton:
            return StopWatchApp.buttons[self.identifier]
        }
    }
    
    var elementExists: Bool {
        switch self {
        case .startButton:
            return self.element.waitForExistence(timeout: 5)
        case .lapButton:
            return self.element.waitForExistence(timeout: 5)
        }
    }
}

class StopWatch {
    static func tapStartButton() {
        AccessibilityIdentifier.startButton.element.tap()
    }
    
    static func tapLapButton() {
        AccessibilityIdentifier.lapButton.element.tap()
    }
}


