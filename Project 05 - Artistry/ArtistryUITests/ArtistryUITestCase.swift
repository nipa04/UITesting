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
      Work.tapBackButtonArtistryPabloPiccsao()
      let exits = ArtistX.tableOfPabloPicasso.elementExist
      XCTAssertTrue( exits, "Does not exists")
    
//    Artist.tapPabloPicasso()
//    Work.tapBackButtonArtistryPabloPicasso()
  }
  
  func testVincentVanGogh() {
    Artist.tapVincentVanGogh()
    let exits = WorkX.backButtonArtistryVincentGogh.elementExists
    XCTAssertTrue(exits , "Does not Exits")
    Work.tapBackButtonArtistryVincentGogh()
    
//    let exits = WorkX.backButtonArtistryVincentGogh.elementExists
//    XCTAssertTrue(exits , "Does not Exits")
    
//    Artist.tapVincentVanGogh()
//    Work.tapBackButtonArtistryVincentGogh()
  }
  
  func testFridaKahlo() {
    Artist.tapFridaKahlo()
    Work.tapbackButtonArtistryFridaKahlo()
    
//    Artist.tapFridakahlo()
//    Work.tapBackButtonArtistryFridakahlo()
  }
  
  func testGeorgiaKeeffe() {
    Artist.tapGeorgiaKeeffe()
    Work.tabBackButtonArtistryGeorgiaKeeffe()
    
//    Artist.tapGeorgiaKeeffe()
//    Work.tapBackButtonArtistryGeorgiakeeffe()
  }
  func testAndyWarhol() {
    Artist.tapAndyWarhol()
    Work.tapbackButtonArtistryAndyWarhol()
    
//    Artist.tapAndyWarhol()
//    Work.tapBackButtonArtistryAndyWarhol()
  }
  func testLeonardoVinci() {
    Artist.tapLeonardoVinci()
    Work.tapBackButtonArtistryLeonardoVinci()
    
//    Artist.tapLeonardoVinci()
//    Work.tapBackButtonArtistryLeonardoVinci()
  }
  
  func testRembrandt() {
    Artist.tapRembrandt()
    Work.tapbackButtonArtistryRembrandt()
    
//    Artist.tapRembrandt()
//    Work.tapBackButtonArtistryRembrandt()
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
