//
//  ArtistryUITestCase.swift
//  ArtistryUITests
//
//  Created by iOS developer on 8/1/18.
//  Copyright © 2018 RayWenderlich. All rights reserved.
//

import XCTest

class ArtistryUITestCase: ArtistryUITestBase {
  
  func testPabloPicasso() {
    Artist.tapPabloPicasso()
    Work.tapBackButtonArtistryPabloPicasso()
  }
  
  func testVincentVanGogh() {
    Artist.tapVincentVanGogh()
    Work.tapBackButtonArtistryVincentGogh()
  }
  
  func testFridaKahlo() {
    Artist.tapFridakahlo()
    Work.tapBackButtonArtistryFridakahlo()
  }
  
  func testGeorgiaKeeffe() {
    Artist.tapGeorgiaKeeffe()
    Work.tapBackButtonArtistryGeorgiakeeffe()
  }
  func testAndyWarhol() {
    Artist.tapAndyWarhol()
    Work.tapBackButtonArtistryAndyWarhol()
  }
  func testLeonardoVinci() {
    Artist.tapLeonardoVinci()
    Work.tapBackButtonArtistryLeonardoVinci()
  }
  
  func testRembrandt() {
    Artist.tapRembrandt()
    Work.tapBackButtonArtistryRembrandt()
  }
  
  func testExample() {
    
    let tablesQuery = XCUIApplication().tables
    tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Pablo Picasso"]/*[[".cells.staticTexts[\"Pablo Picasso\"]",".staticTexts[\"Pablo Picasso\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    
    let guernicaStaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Guernica"]/*[[".cells.staticTexts[\"Guernica\"]",".staticTexts[\"Guernica\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    guernicaStaticText.tap()
    guernicaStaticText.tap()
    
    let theWeepingWomanStaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["The Weeping Woman"]/*[[".cells.staticTexts[\"The Weeping Woman\"]",".staticTexts[\"The Weeping Woman\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    theWeepingWomanStaticText.swipeUp()
    theWeepingWomanStaticText.tap()
    theWeepingWomanStaticText.tap()
  
           
  }
    
}
