//
//  sixthViewController.swift
//  Zuri iOS
//
//  Created by Jamaaldeen Opasina on 9/4/21.
//

import UIKit


class sixthViewController: UIViewController, UITextFieldDelegate {

    var timer: Timer?
    var isTimerOn = false
    
    
    var timeLeft = 60
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        codeTextField.resignFirstResponder()
    }

    
    @IBAction func actionButtonTapped(_ sender: Any) {
        if let pageController = parent as? MainPageViewController {
            pageController.pushNext()
        }
    }
    

    
    @objc var timerLabel: UILabel!
    @IBOutlet var codeTextField: OneTimeCodeTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()
        
        codeTextField.defaultCharacter = "-"
        codeTextField.configure()
        codeTextField.didEnterLastDigit = { [weak self] code in
            print(code)
        // Do any additional setup after loading the view.
    }
        
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation //before navigation
   // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
   // }
    */

}
    func startTimer() {
        
        // this idicates that the timer is currently on
        isTimerOn = true
        
        // Two conditions must be met before the timer fires
        // 1. the timer must be on
        // 2. the timeLeft must not equal 0
        if isTimerOn && timeLeft != 0 {
            
            //if the conditions are met, we initialize our timer
            if isTimerOn && timeLeft != 0 {
                timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(getter: timerLabel), userInfo: nil, repeats: true)
            }
            
            func updatetimerLabel() {
                if timeLeft != 0 {
                    timerLabel.text = "\(timeLeft)"
                    timeLeft -= 1
                
            }
}
        }
    }
}

