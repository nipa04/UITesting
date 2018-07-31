//
//  GoodAsOldPhonesUITests.swift
//  GoodAsOldPhonesUITests
//
//  Created by iOS developer on 7/30/18.
//  Copyright © 2018 Code School. All rights reserved.
//

import XCTest

class GAOPUITestsBase: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        
        GaopApplication.launchEnvironment = ["Reset Data" : "True"]
        GaopApplication.launch()
    }
     
    
    override func tearDown() {
       
        super.tearDown()
    }
    
}
