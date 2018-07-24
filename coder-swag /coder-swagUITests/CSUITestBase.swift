//
//  coder_swagUITests.swift
//  coder-swagUITests
//
//  Created by iOS developer on 7/18/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import XCTest

class CSUITestBase : XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        
        
        HostApplication.launchEnvironment = ["RESET_DATA" : "TRUE"]
        HostApplication.launch()
        
        
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
   
    
}
