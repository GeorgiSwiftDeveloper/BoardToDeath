//
//  OnboardingPageVC.swift
//  BoardToDeath
//
//  Created by Caleb Stultz on 1/15/18.
//  Copyright © 2018 Caleb Stultz. All rights reserved.
//

import UIKit

class OnboardingPageVC: UIViewController {

    var userDefaults = UserDefaults.standard
        
    @IBAction func doneBtnWasPressed(_ sender: Any) {
        userDefaults.onboardingCompleted = true
        dismiss(animated: true)
//        let alert = UIAlertController(title: "You did it!", message: "Congratulation", preferredStyle: .alert)
//        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
//        alert.addAction(alertAction)
//        present(alert, animated: true, completion: nil)
//        alert.view.accessibilityIdentifier = "Alert"
    }
    
}
