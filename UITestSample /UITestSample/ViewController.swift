//
//  ViewController.swift
//  UITestSample
//
//  Created by iOS developer on 7/11/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pinkButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    
    @IBOutlet weak var yellowButton: UIButton!
    
    @IBOutlet weak var greenButton: UIButton!
    
    @IBOutlet weak var blueButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pinkButton.accessibilityIdentifier     = "ViewController_pinkButton";
        self.orangeButton.accessibilityIdentifier   = "ViewController_orangeButton";
        self.yellowButton.accessibilityIdentifier   = "ViewController_yellowButton";
        self.greenButton.accessibilityIdentifier   = "ViewController_greenButton" ;
        self.blueButton.accessibilityIdentifier   = "ViewController_blueButton"
    }
}

