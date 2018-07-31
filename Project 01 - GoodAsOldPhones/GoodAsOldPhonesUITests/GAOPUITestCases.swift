//
//  GAOPUITestCases.swift
//  GoodAsOldPhonesUITests
//
//  Created by iOS developer on 7/30/18.
//  Copyright © 2018 Code School. All rights reserved.
//

import XCTest

class GAOPUITestCases: GAOPUITestsBase {
        

    func testWallSet() {
        Products.tapWallSet()
        ProductsView.tapBackButton()
        let exits = Products.tableWallSet.exists
        XCTAssertTrue(exits, "Does exits" )

    }
    
    func testDialPhone() {
        Products.tapDialPhone()
        ProductsView.tapBackButton()
        let exits = Products.tableDialPhone.exists
        XCTAssertTrue(exits, "Doesn't exits")
    }
    
    func testDeskSet() {
        Products.tapDeskSet()
        ProductsView.tapBackButton()
        let exits = Products.tableDeskSet.exists
        XCTAssertTrue(exits, "Doesn't exits")
    }
    func testMotoPortable() {
        Products.tapMotoPortable()
        ProductsView.tapBackButton()
        let exits = Products.tableMotoPortable.exists
        XCTAssertTrue(exits, "Doesn't exits")
    }
 
    
    func testBackButton() {
        Products.tapWallSet()
        ProductsView.tapBackButton()
    }
    func testBackButton2() {
        Products.tapDialPhone()
        ProductsView.tapBackButton()
    }
    
    func testBackButton3() {
        Products.tapDeskSet()
        ProductsView.tapBackButton()
    }
    func testBackBuuton3() {
        Products.tapMotoPortable()
        ProductsView.tapBackButton()
    }
    
    func testTabBarProducts() {
        Products.tapProducts()
        
        let exits =
            Products.tableWallSet.exists
        && Products.tableDialPhone.exists
        && Products.tableDeskSet.exists
        && Products.tableMotoPortable.exists
        
        XCTAssertTrue(exits, "Pages not exits")
        
        GaopApplication.terminate()
    }
    
    func testTabBarUs() {
        Products.tapUs()
        GaopApplication/*@START_MENU_TOKEN@*/.scrollViews.containing(.image, identifier:"header-contact").element/*[[".scrollViews.containing(.staticText, identifier:\"www.example.com\").element",".scrollViews.containing(.image, identifier:\"icon-about-website\").element",".scrollViews.containing(.staticText, identifier:\"412-888-9028\").element",".scrollViews.containing(.image, identifier:\"icon-about-phone\").element",".scrollViews.containing(.staticText, identifier:\"good-as-old@example.com\").element",".scrollViews.containing(.image, identifier:\"icon-about-email\").element",".scrollViews.containing(.staticText, identifier:\"Contact\").element",".scrollViews.containing(.staticText, identifier:\"*Hands-free phones available\").element",".scrollViews.containing(.staticText, identifier:\"Whether you are looking for a turn-of-the-century wall set or a Zack Morris Special, we've got you covered. Give us a ring, and we will get you connected. \").element",".scrollViews.containing(.staticText, identifier:\"Good as Old Phones returns the phones of  yesteryear back to their original glory and then gets them into the hands* of those who appreciate them most:\").element",".scrollViews.containing(.staticText, identifier:\"About Us\").element",".scrollViews.containing(.image, identifier:\"header-contact\").element"],[[[-1,11],[-1,10],[-1,9],[-1,8],[-1,7],[-1,6],[-1,5],[-1,4],[-1,3],[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeUp()
        GaopApplication.scrollViews.containing(.image, identifier: "header-contact").element.swipeDown()
    }
    
    
    func testExample() {
        
        
        let app = XCUIApplication()
        let tabBarsQuery = app.tabBars
        tabBarsQuery.buttons["Us"].tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["About Us"]/*[[".scrollViews.staticTexts[\"About Us\"]",".staticTexts[\"About Us\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let headerContactScrollView = app/*@START_MENU_TOKEN@*/.scrollViews.containing(.image, identifier:"header-contact").element/*[[".scrollViews.containing(.staticText, identifier:\"www.example.com\").element",".scrollViews.containing(.image, identifier:\"icon-about-website\").element",".scrollViews.containing(.staticText, identifier:\"412-888-9028\").element",".scrollViews.containing(.image, identifier:\"icon-about-phone\").element",".scrollViews.containing(.staticText, identifier:\"good-as-old@example.com\").element",".scrollViews.containing(.image, identifier:\"icon-about-email\").element",".scrollViews.containing(.staticText, identifier:\"Contact\").element",".scrollViews.containing(.staticText, identifier:\"*Hands-free phones available\").element",".scrollViews.containing(.staticText, identifier:\"Whether you are looking for a turn-of-the-century wall set or a Zack Morris Special, we've got you covered. Give us a ring, and we will get you connected. \").element",".scrollViews.containing(.staticText, identifier:\"Good as Old Phones returns the phones of  yesteryear back to their original glory and then gets them into the hands* of those who appreciate them most:\").element",".scrollViews.containing(.staticText, identifier:\"About Us\").element",".scrollViews.containing(.image, identifier:\"header-contact\").element"],[[[-1,11],[-1,10],[-1,9],[-1,8],[-1,7],[-1,6],[-1,5],[-1,4],[-1,3],[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        headerContactScrollView.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Good as Old Phones returns the phones of  yesteryear back to their original glory and then gets them into the hands* of those who appreciate them most:"]/*[[".scrollViews.staticTexts[\"Good as Old Phones returns the phones of  yesteryear back to their original glory and then gets them into the hands* of those who appreciate them most:\"]",".staticTexts[\"Good as Old Phones returns the phones of  yesteryear back to their original glory and then gets them into the hands* of those who appreciate them most:\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Contact"]/*[[".scrollViews.staticTexts[\"Contact\"]",".staticTexts[\"Contact\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["good-as-old@example.com"]/*[[".scrollViews.staticTexts[\"good-as-old@example.com\"]",".staticTexts[\"good-as-old@example.com\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        headerContactScrollView/*@START_MENU_TOKEN@*/.swipeLeft()/*[[".swipeUp()",".swipeLeft()"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        app/*@START_MENU_TOKEN@*/.staticTexts["www.example.com"]/*[[".scrollViews.staticTexts[\"www.example.com\"]",".staticTexts[\"www.example.com\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        headerContactScrollView.tap()
        tabBarsQuery.buttons["Products"].tap()
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["1907 Wall Set"]/*[[".cells.staticTexts[\"1907 Wall Set\"]",".staticTexts[\"1907 Wall Set\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.tap()
        app.buttons["button addtocart"].tap()
        app.navigationBars["GoodAsOldPhones.ProductView"].buttons["Back"].tap()
        
    }
    
}
