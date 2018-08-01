//
//  ArtistryUITests.swift
//  ArtistryUITests
//
//  Created by iOS developer on 8/1/18.
//  Copyright © 2018 RayWenderlich. All rights reserved.
//

import XCTest

class ArtistryUITestBase: XCTestCase {
        
    override func setUp() {
        super.setUp()
      
        continueAfterFailure = false
      
          ArtistryApplication.launchEnvironment = ["Reset Data" : "True"]
          ArtistryApplication.launch()

    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
 
    
}
