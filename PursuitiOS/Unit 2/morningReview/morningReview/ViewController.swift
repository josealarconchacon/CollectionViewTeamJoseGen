//
//  ViewController.swift
//  morningReview
//
//  Created by Genesis Mosquera on 11/14/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    var name = "Alan"
    var other = "h"

    @IBOutlet weak var userInputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userInputTextField.delegate = self
        
    }
}
    // extension name of class - you cannot declare variables inside of an extension
extension ViewController {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let input = textField.text else { return false }
        if input.count < 2 {
            return false
        }
        print(input)
        textField.resignFirstResponder()
        return true
    }
    }


