//
//  MainPageViewController.swift
//  Zuri iOS
//
//  Created by Jamaaldeen Opasina on 9/4/21.
//

import UIKit

class MainPageViewController: UIPageViewController {
    
    private var viewControllerList: [UIViewController] = {
        let storyboard = UIStoryboard.onboarding
        let firstVC = storyboard.instantiateViewController(withIdentifier: "FirstStepVC")
        let secondVC = storyboard.instantiateViewController(withIdentifier: "SecondStepVC")
        let thirdVC = storyboard.instantiateViewController(withIdentifier: "ThirdStepVC")
        let fourthVC = storyboard.instantiateViewController(withIdentifier: "FourthStepVC")
        let fifthVC = storyboard.instantiateViewController(withIdentifier: "FifthStepVC")
        let sixthVC = storyboard.instantiateViewController(withIdentifier: "SixthStepVC")
        let seventhVC = storyboard.instantiateViewController(withIdentifier: "SeventhStepVC")
        
        
        return [firstVC, secondVC, thirdVC, fourthVC, fifthVC, sixthVC, seventhVC]
    }()
    
    // MARK: - Properties
    private var currentIndex = 0
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setViewControllers([viewControllerList[0]], direction: .forward, animated: false, completion: nil)
    }
    
    // MARK: - Functions
    func pushNext() {
        if currentIndex + 1 < viewControllerList.count {
            self.setViewControllers([self.viewControllerList[self.currentIndex + 1]], direction: .forward, animated: true, completion: nil)
            currentIndex += 1
        }
    }
    
}
