//
//  ViewController.swift
//  IntroToDelegation
//
//  Created by Genesis Mosquera on 11/13/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit
// 1. conform to the UITextFieldDelegate which is a protocol

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var usernameTextField:
    UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 2. set usernameTextField as the delegate
        // NB. must be done in order to get delegate function notifications
        
        usernameTextField.delegate = self
        passwordTextField.delegate = self
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

