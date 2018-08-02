//
//  Artist.swift
//  ArtistryUITests
//
//  Created by iOS developer on 8/1/18.
//  Copyright © 2018 RayWenderlich. All rights reserved.
//

import Foundation
import XCTest

class Artist {
  
  static var tableOfPabloPicasso : XCUIElement {
    return ArtistryApplication.tables.staticTexts["Pablo Picasso"]
  }
  static var tableOfVincentVanGogh: XCUIElement {
    return ArtistryApplication.tables.staticTexts["Vincent van Gogh"]
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
