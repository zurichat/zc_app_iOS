//
//  LandscapeManager.swift
//  Zuri iOS
//
//  Created by Jamaaldeen Opasina on 9/4/21.
//

import Foundation

class LandscapeManager {
    static let shared = LandscapeManager()
    
    var isFirstLaunch: Bool {
        get {
            !UserDefaults.standard.bool(forKey: #function)
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: #function)
        }
    }
}
