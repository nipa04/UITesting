//
//  CSUITestCase.swift
//  coder-swagUITests
//
//  Created by iOS developer on 7/23/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import XCTest

class HomePageTestCases: CSUITestBase {
    
    func testTableViewCellOfShirts(){
        Category.tapShirt()
        Product.shirtBack()
        XCTAssertTrue(Category.pageLoaded(), "Category page doesnot exist!")
    }
    
    func testFindElementInHomePage() {
        let exists = Category.tableShirtCell.exists
            && Category.tableHatCell.exists
            && Category.tableHoodiesCell.exists
            && Category.tableDigitalCell.exists
        XCTAssertTrue(exists, "Doesn't exsit")
    }
    func testFindCollectionViewPageShirt() {
        Category.tapShirt()
        Product.shirtBack()
        let exists = Product.collectionViewShirt.exists
        XCTAssertFalse(exists, "Doesn't exist")
    }
    func testFindCollectionViewPageHat() {
        Category.tapHat()
        let exists = Product.collectionViewHat.exists
        XCTAssertTrue(exists, "Doesn't exist")
        Product.hatBack()
    }
    func testFindCollectionViewPageHoodies() {
        Category.tapHoodies()
        let exists = Product.collectionViewHoodies.exists
        XCTAssertTrue(exists, "Doesn't exists")
        Product.hoodiesBack()
    }
    
    func testFindCollectionViewDigital() {
        
        Category.tableShirtCell.swipeUp()
        Category.tapDigital()
        let exists = Product.collectionViewDigital.exists
        XCTAssertFalse(exists, "Doesn't exists")
        Product.digitalBack()
    }
    
   func testTableViewCellOfHoodies() {
        Category.tapHoodies()
        Product.hoodiesBack()
    
    }
    
    func testTableViewCellOfHats() {
        Category.tapHat()
        Product.hatBack()
    }
    
    func testTableViewCellOfDigitals(){
        Category.tapDigital()
        Product.digitalBack()

    }
    
    func testCollectionViewCellofShirts() {
        Category.tapShirt()
        Product.tapCollectionViewShirt()
        Product.shirtBack()
    }
    
    func testCollectionViewCellOfHoodies() {
        Category.tapHoodies()
        Product.tapCollectionViewHoodies()
        Product.hoodiesBack()
    }
    
    func testCollectionViewCellOfHats() {
        Category.tapHat()
        Product.tapCollectionViewHat()
        Product.hatBack()
}

}
