//
//  ArtistryGlobal.swift
//  ArtistryUITests
//
//  Created by iOS developer on 8/1/18.
//  Copyright © 2018 RayWenderlich. All rights reserved.
//

import Foundation
import XCTest

let ArtistryApplication = XCUIApplication()

extension XCUIElement {
  func whenPresent() -> XCUIElement {
    let exists = waitForExistence(timeout: 5)
    XCTAssert(exists, "Element missing")
    return self
  }
}
