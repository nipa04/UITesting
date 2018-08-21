//
//  BirthdaysUITests.swift
//  BirthdaysUITests
//
//  Created by iOS developer on 8/20/18.
//  Copyright © 2018 Appcoda. All rights reserved.
//

import XCTest

class BirthdaysUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
    
        continueAfterFailure = false
        BirthdaysApp.launchEnvironment = ["Reset Data" : "True"]
        BirthdaysApp.launch()
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    
}
