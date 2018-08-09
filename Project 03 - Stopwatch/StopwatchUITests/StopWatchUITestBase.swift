//
//  File.swift
//  StopwatchUITests
//
//  Created by iOS developer on 8/9/18.
//  Copyright © 2018 YiGu. All rights reserved.
//

import Foundation
import XCTest

class StopwatchUITestBase: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        StopWatchApp.launchEnvironment = ["Reset Data" : "True"]
        StopWatchApp.launch()
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    
}
