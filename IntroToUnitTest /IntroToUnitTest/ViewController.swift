//
//  ViewController.swift
//  IntroToUnitTest
//
//  Created by iOS developer on 7/10/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func isNumberEven(num: Int)-> Bool {
        if num % 2 == 0
        {
            return true
        }
        else {
            return false
        }
    }
    func sumEvenValuedNumbersFibonacciSequence(limit : Int) -> Int {
            var sum = 0
            var a = 1
            var b = 1
            while b < limit {
                if b % 2 == 0 {
                    sum = sum + b
                }
        let h = a + b
         a = b
         b = h
    }
    return sum
}
    func getLessonCoinAmount(coursePrice : Int) -> Int {
        let lessonRewardCoinAmtpercentage = 25
        let decimal = Double (lessonRewardCoinAmtpercentage ) / 100.0
        return Int(Double(coursePrice) * decimal)
    }
}

