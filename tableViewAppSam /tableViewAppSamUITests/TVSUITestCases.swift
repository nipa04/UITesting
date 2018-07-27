//
//  TVSUITestCases.swift
//  tableViewAppSamUITests
//
//  Created by iOS developer on 7/26/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import XCTest

class TVSUITestCases: TVSUITestBase {
        
    
    func testTableViewCells(){
        Table.tapIronMan()
        let exits = Table.tableOfIronMan.exists
        XCTAssertTrue( exits, "Doesn't exits")
    }
    
}
