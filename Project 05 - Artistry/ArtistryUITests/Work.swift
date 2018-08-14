//
//  Work.swift
//  ArtistryUITests
//
//  Created by iOS developer on 8/1/18.
//  Copyright © 2018 RayWenderlich. All rights reserved.
//

import Foundation
import XCTest

protocol UITestableElement {
  var identifier : String { get }
  var xcComponent : XCUIElement { get }
  var elementExists : Bool { get }
}

enum WorkX {
  case backButtonArtistryPabloPiccsao
  case backButtonArtistryVincentGogh
  case backButtonArtistryFridaKahlo
  case backButtonArtistryGeorgiaKeeffe
  case backButtonArtistryAndyWarhol
  case backButtonArtistryLeonardoVinci
  case backButtonArtistryRembrandt

}

extension WorkX : UITestableElement {

  var identifier: String {
    switch self {
    case .backButtonArtistryPabloPiccsao:
      return "Pablo Picasso"
    case .backButtonArtistryVincentGogh:
      return "Vincent van Gogh"
    case .backButtonArtistryFridaKahlo:
      return "Frida Kahlo"
    case .backButtonArtistryGeorgiaKeeffe:
      return "Georgia O'Keeffe"
    case .backButtonArtistryAndyWarhol:
      return "Andy Warhol"
    case .backButtonArtistryLeonardoVinci:
      return "Leonardo da Vinci"
    case .backButtonArtistryRembrandt:
      return "Rembrandt"
      
    }
  }
    var xcComponent: XCUIElement {
      switch self {
      case .backButtonArtistryPabloPiccsao:
        fallthrough
      case .backButtonArtistryVincentGogh:
        fallthrough
      case .backButtonArtistryFridaKahlo:
        fallthrough
      case .backButtonArtistryGeorgiaKeeffe:
        fallthrough
      case .backButtonArtistryAndyWarhol:
        fallthrough
      case .backButtonArtistryLeonardoVinci:
        fallthrough
      case .backButtonArtistryRembrandt:
        return ArtistryApplication.navigationBars[self.identifier].buttons["Artistry"]
        }
  }
  
  var elementExists: Bool {
    return self.xcComponent.waitForExistence(timeout: 5)
  }
}


class Work {
  static func tapBackButtonArtistryPabloPiccsao() {
    WorkX.backButtonArtistryPabloPiccsao.xcComponent.tap()
  }
  static func tapBackButtonArtistryVincentGogh() {
    WorkX.backButtonArtistryVincentGogh.xcComponent.tap()
  }
  static func tapbackButtonArtistryFridaKahlo() {
    WorkX.backButtonArtistryFridaKahlo.xcComponent.tap()
  }
  static func tabBackButtonArtistryGeorgiaKeeffe() {
    WorkX.backButtonArtistryGeorgiaKeeffe.xcComponent.tap()
  }
  static func tapbackButtonArtistryAndyWarhol() {
    WorkX.backButtonArtistryAndyWarhol.xcComponent.tap()
  }
  static func tapBackButtonArtistryLeonardoVinci() {
    WorkX.backButtonArtistryLeonardoVinci.xcComponent.tap()
  }
  static func tapbackButtonArtistryRembrandt(){
    WorkX.backButtonArtistryRembrandt.xcComponent.tap()
  }
}

//class Work {
//
//  static var backButtonArtistryPabloPiccsao : XCUIElement {
//    return ArtistryApplication.navigationBars["Pablo Picasso"].buttons["Artistry"]
//  }
//  static var backButtonArtistryVincentGogh : XCUIElement {
//    return ArtistryApplication.navigationBars["Vincent van Gogh"].buttons["Artistry"]
//  }
//  static var backButtonArtistryFridaKahlo : XCUIElement {
//    return ArtistryApplication.navigationBars[ ].buttons["Artistry"]
//  }
//  static var backButtonArtistryGeorgiaKeeffe : XCUIElement {
//    return ArtistryApplication.navigationBars["Georgia O'Keeffe"].buttons["Artistry"]
//  }
//  static var backButtonArtistryAndyWarhol : XCUIElement {
//    return ArtistryApplication.navigationBars["Andy Warhol"].buttons["Artistry"]
//  }
//  static var backButtonArtistryLeonardoVinci : XCUIElement {
//    return ArtistryApplication.navigationBars["Leonardo da Vinci"].buttons["Artistry"]
//  }
//  static var backButtonArtistryRembrandt : XCUIElement {
//    return ArtistryApplication.navigationBars["Rembrandt"].buttons["Artistry"]
//  }
//
//
//
//
//
//  static func tapBackButtonArtistryPabloPicasso() {
//    backButtonArtistryPabloPiccsao.tap()
//  }
//  static func tapBackButtonArtistryVincentGogh() {
//    backButtonArtistryVincentGogh.tap()
//  }
//
//  static func tapBackButtonArtistryFridakahlo() {
//    backButtonArtistryFridaKahlo.tap()
//  }
//
//  static func tapBackButtonArtistryGeorgiakeeffe() {
//    backButtonArtistryGeorgiaKeeffe.tap()
//  }
//
//  static func tapBackButtonArtistryAndyWarhol() {
//    backButtonArtistryAndyWarhol.tap()
//  }
//  static func tapBackButtonArtistryLeonardoVinci() {
//    backButtonArtistryLeonardoVinci.tap()
//  }
//  static func tapBackButtonArtistryRembrandt() {
//    backButtonArtistryRembrandt.tap()
//  }
//
//
//}

