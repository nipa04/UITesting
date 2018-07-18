//
//  ViewController.swift
//  UITestingOfTableView
//
//  Created by iOS developer on 7/12/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    var numberOfRow = 0
    
    @IBOutlet weak var table: UITableView!
    
    @IBAction func buttontapped(_ sender: UIButton) {
        numberOfRow = 10
        self.table.reloadData()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfRow
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = "This is row No \(indexPath.row + 1)"
        return cell!
    }

}

