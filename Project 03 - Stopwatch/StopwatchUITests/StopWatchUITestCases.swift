//
//  File.swift
//  StopwatchUITests
//
//  Created by iOS developer on 8/9/18.
//  Copyright © 2018 YiGu. All rights reserved.
//

import Foundation
import XCTest

class StopWatchUITestCases : StopwatchUITestBase {

    func testStartButton() {
    StopWatch.tapStartButton()
    sleep(4)
    StopWatch.tapStartButton()
    sleep(2)
    StopWatchApp.terminate()
}
    
    func testApp() {
        
    }
    
}
