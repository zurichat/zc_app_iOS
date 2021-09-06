//
//  ConciergeViewController.swift
//  Zuri iOS
//
//  Created by Jamaaldeen Opasina on 9/4/21.
//

import UIKit

class ConciergeViewController: UIViewController {

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        //performSegue(withIdentifier: "toOnboarding", sender: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
     if LandscapeManager.shared.isFirstLaunch {
          performSegue(withIdentifier: "toOnboarding", sender: nil)
        
           LandscapeManager.shared.isFirstLaunch = true
        }
       else {
          performSegue(withIdentifier: "toMain", sender: nil)
        }
  }
}
