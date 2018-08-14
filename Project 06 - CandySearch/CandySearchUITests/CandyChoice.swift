//
//  File.swift
//  CandySearchUITests
//
//  Created by iOS developer on 8/14/18.
//  Copyright © 2018 Peartree Developers. All rights reserved.
//

import Foundation
import XCTest

protocol UIElement {
    var identifier : String {get}
    var xcComponent: XCUIElement {get}
    var elementExits : Bool {get}
}

enum CandyChoice: String {
    
    case tableOfChocolateBar
    case tableOfChocolateChip
    case tableOfDarkChocolate
    case tableOfLollipop
    case tableOfCandyCane
    case tableOfJawBreaker
    case tableOfCaramel
    case tableOfSourChew
    case tableOfGummiBear
    
}

extension CandyChoice : UIElement {
  
    var identifier: String {
        switch self {
        case .tableOfChocolateBar:
            return "Chocolate Bar"
        case .tableOfChocolateChip:
            return "Chocolate Chip"
        case .tableOfDarkChocolate:
            return "Dark Chocolate"
        case .tableOfLollipop:
            return "Lollipop"
        case .tableOfCandyCane:
            return "Candy cane"
        case .tableOfJawBreaker:
            return "Jaw Breaker"
        case .tableOfCaramel:
            return "Caramel"
        case .tableOfSourChew:
            return "Sour Chew"
        case .tableOfGummiBear:
            return "GummiBear"
        }
    }
    
    var xcComponent: XCUIElement {
        switch self {
        case .tableOfChocolateBar :
            fallthrough
        case .tableOfChocolateChip:
            fallthrough
        case .tableOfDarkChocolate:
            fallthrough
        case .tableOfLollipop:
            fallthrough
        case .tableOfCandyCane:
            fallthrough
        case .tableOfJawBreaker:
            fallthrough
        case .tableOfCaramel:
            fallthrough
        case .tableOfSourChew:
            fallthrough
        case .tableOfGummiBear:
            return CandySearchApp.tables.staticTexts["self.identifier"]
        }
    }
    
    var elementExits: Bool {
        return self.xcComponent.waitForExistence(timeout: 5)
    }
    
    class CandyChoiceX {
        
        static func tapChocolateBar() {
            CandyChoice.tableOfChocolateBar.xcComponent.tap()
        }
        static func tapChocolateChip() {
            CandyChoice.tableOfChocolateChip.xcComponent.tap()
        }
        static func tapDarkChocolate() {
            CandyChoice.tableOfDarkChocolate.xcComponent.tap()
        }
        static func tapLollipop() {
            CandyChoice.tableOfLollipop.xcComponent.tap()
        }
        static func tapCandyCane() {
            CandyChoice.tableOfCandyCane.xcComponent.tap()
        }
        static func tapJawBreaker() {
            CandyChoice.tableOfJawBreaker.xcComponent.tap()
        }
        static func tapCaramel() {
            CandyChoice.tableOfCaramel.xcComponent.tap()
        }
        static func tapSourChew(){
            CandyChoice.tableOfSourChew.xcComponent.tap()
        }
        static func tapGummiBear() {
            CandyChoice.tableOfGummiBear.xcComponent.tap()
        }
        
    }
    
}
