//
//  Work.swift
//  ArtistryUITests
//
//  Created by iOS developer on 8/1/18.
//  Copyright © 2018 RayWenderlich. All rights reserved.
//

import Foundation
import XCTest


//enum WorkX {
//  case backButtonArtistryPabloPiccsao
//  case backButtonArtistryVincentGogh
//  case backButtonArtistryFridaKahlo
//  case backButtonArtistryGeorgiaKeeffe
//  case backButtonArtistryAndyWarhol
//  case backButtonArtistryLeonardoVinci
//  case backButtonArtistryRembrandt
//
//}

class Work {
  
  static var backButtonArtistryPabloPiccsao : XCUIElement {
    return ArtistryApplication.navigationBars["Pablo Picasso"].buttons["Artistry"]
  }
  static var backButtonArtistryVincentGogh : XCUIElement {
    return ArtistryApplication.navigationBars["Vincent van Gogh"].buttons["Artistry"]
  }
  static var backButtonArtistryFridaKahlo : XCUIElement {
    return ArtistryApplication.navigationBars["Frida Kahlo"].buttons["Artistry"]
  }
  static var backButtonArtistryGeorgiaKeeffe : XCUIElement {
    return ArtistryApplication.navigationBars["Georgia O'Keeffe"].buttons["Artistry"]
  }
  static var backButtonArtistryAndyWarhol : XCUIElement {
    return ArtistryApplication.navigationBars["Andy Warhol"].buttons["Artistry"]
  }
  static var backButtonArtistryLeonardoVinci : XCUIElement {
    return ArtistryApplication.navigationBars["Leonardo da Vinci"].buttons["Artistry"]
  }
  static var backButtonArtistryRembrandt : XCUIElement {
    return ArtistryApplication.navigationBars["Rembrandt"].buttons["Artistry"]
  }
  
  
  
  
  
  static func tapBackButtonArtistryPabloPicasso() {
    backButtonArtistryPabloPiccsao.tap()
  }
  static func tapBackButtonArtistryVincentGogh() {
    backButtonArtistryVincentGogh.tap()
  }
  
  static func tapBackButtonArtistryFridakahlo() {
    backButtonArtistryFridaKahlo.tap()
  }
  
  static func tapBackButtonArtistryGeorgiakeeffe() {
    backButtonArtistryGeorgiaKeeffe.tap()
  }
  
  static func tapBackButtonArtistryAndyWarhol() {
    backButtonArtistryAndyWarhol.tap()
  }
  static func tapBackButtonArtistryLeonardoVinci() {
    backButtonArtistryLeonardoVinci.tap()
  }
  static func tapBackButtonArtistryRembrandt() {
    backButtonArtistryRembrandt.tap()
  }
  
  
}
