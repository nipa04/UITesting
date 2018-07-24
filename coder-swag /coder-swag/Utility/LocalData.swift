//
//  LocalData.swift
//  coder-swag
//
//  Created by iOS developer on 7/23/18.
//  Copyright © 2018 iOS developer. All rights reserved.
//

import Foundation

class LocalData {
    static let sharedInstance = LocalData()
    
    func reset() {
        let domain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: domain)
        UserDefaults.standard.synchronize()
    }
}
