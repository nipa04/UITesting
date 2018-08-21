//
//  HitListUITest.swift
//  HitListUITest
//
//  Created by iOS developer on 8/21/18.
//  Copyright © 2018 YiGu. All rights reserved.
//

import XCTest

class HitListUITestBase: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        
        HitListApp.launchEnvironment = ["Reset Data" : "True"]
        HitListApp.launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
}
