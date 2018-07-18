//
//  ViewControllerTest.swift
//  IntroToUnitTestTests
//
//  Created by iOS developer on 7/10/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import XCTest
@testable import IntroToUnitTest


class ViewControllerTest: XCTestCase {
    
    let viewController = ViewController()
    
    func testIsNumberEven() {
        let odd = 9
        let even = 8
        XCTAssertTrue(viewController.isNumberEven(num: even))
        XCTAssertFalse(viewController.isNumberEven(num: odd))
    }
    func testSumEvenValuedNumbersFibonacciSequence() {
        let limit = 4000000
        let answer = 4613732
        XCTAssertEqual(viewController.sumEvenValuedNumbersFibonacciSequence(limit: limit), answer)
    }
    func testCoinRewardedAmount() {
        let coursePrice = 100
        let coinsRewarded = 44
        XCTAssertEqual(viewController.sumEvenValuedNumbersFibonacciSequence( limit: coursePrice), coinsRewarded)
        }
    
}
