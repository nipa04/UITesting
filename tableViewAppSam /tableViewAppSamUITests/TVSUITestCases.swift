//
//  TVSUITestCases.swift
//  tableViewAppSamUITests
//
//  Created by iOS developer on 7/26/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import XCTest

class TVSUITestCases: TVSUITestBase {
        
    func testTableView1stCell(){
        Category.tapIronMan()
        let exits = Category.tableOfIronMan.exists
        XCTAssertTrue( exits, "Doesn't exits")
    }
    func testTableView2ndCell() {
        Category.tapSpiderMan()
        let exits = Category.tableOfSpiderMan.exists
        XCTAssertTrue(exits, "Doesn't exits")
        
        }
    func testTableView3rdCell() {
        Category.tapBatman()
        let exits = Category.tableOfBatMan.exists
        XCTAssertTrue(exits, "Doesn't esits")
    }
    func testTablePageLoaded() {
        Category.pageLoaded()
        Category.tapIronMan()
        XCTAssertTrue(Category.pageLoaded(), "Title page not exits")
    }
    
}
