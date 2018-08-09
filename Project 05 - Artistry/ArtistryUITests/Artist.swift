//
//  Artist.swift
//  ArtistryUITests
//
//  Created by iOS developer on 8/1/18.
//  Copyright © 2018 RayWenderlich. All rights reserved.
//

import Foundation
import XCTest

// TEST DESIGN 2 //
/*
protocol UIElement {
  var identifier:   String { get }
  var xcComponent:  XCUIElement { get }
  var elementExist: Bool { get }
}

enum ArtistX {
  case tableOfPabloPicasso
  case tableOfVincentVanGogh
  case tableOfFridaKahlo
  case tableOfGeorgiaKeeffe
  case tableOfAndyWarhol
  case tableOfLeonardoVinci
  case tableOfRembrandt
}

extension ArtistX: UIElement {
  var elementExist: Bool {
    return self.xcComponent.waitForExistence(timeout: 5)
  }
  
  var identifier: String {
    switch self {
    case .tableOfPabloPicasso:
      return "Pablo Picasso"
    case .tableOfVincentVanGogh:
      return "Vincent van Gogh"
    case .tableOfFridaKahlo:
      return "Frida Kahlo"
    case .tableOfGeorgiaKeeffe:
      return "Georgia O'Keeffe"
    case .tableOfAndyWarhol:
      return "Andy Warhol"
    case .tableOfLeonardoVinci:
      return "Leonardo da Vinci"
    case .tableOfRembrandt:
      return "Rembrandt"
    }
  }
  
  var xcComponent: XCUIElement {
    switch self {
    case .tableOfPabloPicasso:
      fallthrough
    case .tableOfVincentVanGogh:
      fallthrough
    case .tableOfFridaKahlo:
      fallthrough
    case .tableOfGeorgiaKeeffe:
      fallthrough
    case .tableOfAndyWarhol:
      fallthrough
    case .tableOfLeonardoVinci:
      fallthrough
    case .tableOfRembrandt:
      return ArtistryApplication.tables.staticTexts[self.identifier]
    }
  }
}
*/

// TEST DESIGN 1 //

class Artist {

  static var tableOfPabloPicasso : XCUIElement {
    return ArtistryApplication.tables.staticTexts["Pablo Picasso"]
  }
  static var tableOfVincentVanGogh: XCUIElement {
    return ArtistryApplication.tables.cells.containing(.staticText, identifier: "Vincent van Gogh").element
    //return ArtistryApplication.tables.staticTexts["Vincent van Gogh"]
  }
  static var tableOfFridaKahlo: XCUIElement {
    return ArtistryApplication.tables.staticTexts["Frida Kahlo"]
  }
  static var tableOfGeorgiaKeeffe: XCUIElement {
    return ArtistryApplication.tables.staticTexts["Georgia O'Keeffe"]
  }
  static var tableOfAndyWarhol: XCUIElement {
    return ArtistryApplication.tables.staticTexts["Andy Warhol"]
  }
  static var tableOfLeonardoVinci: XCUIElement {
    return ArtistryApplication.tables.staticTexts["Leonardo da Vinci"]
  }
  static var tableOfRembrandt: XCUIElement {
    return ArtistryApplication.tables.staticTexts["Rembrandt"]
  }



  static func tapPabloPicasso() {
    tableOfPabloPicasso.tap()
  }
  static func tapVincentVanGogh() {
      tableOfVincentVanGogh.tap()
  }
  static func tapFridakahlo() {
    tableOfFridaKahlo.tap()
  }
  static func tapGeorgiaKeeffe() {
    tableOfGeorgiaKeeffe.tap()
  }
  static func tapAndyWarhol() {
    tableOfAndyWarhol.tap()
  }
  static func tapLeonardoVinci() {
    tableOfLeonardoVinci.tap()
  }
  static func tapRembrandt() {
    tableOfRembrandt.tap()
  }
}

//}

