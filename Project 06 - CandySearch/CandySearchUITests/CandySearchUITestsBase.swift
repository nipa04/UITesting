//
//  CandySearchUITests.swift
//  CandySearchUITests
//
//  Created by iOS developer on 8/14/18.
//  Copyright © 2018 Peartree Developers. All rights reserved.
//

import XCTest

class CandySearchUITestsBase: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        
        CandySearchApp.launchEnvironment = ["Reset Data": "True"]
        CandySearchApp.launch()

    }
    
    override func tearDown() {
        super.tearDown()
    }
    
}
