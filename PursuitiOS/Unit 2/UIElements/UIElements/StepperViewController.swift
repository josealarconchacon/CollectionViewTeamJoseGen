//
//  StepperViewController.swift
//  UIElements
//
//  Created by Genesis Mosquera on 11/9/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class StepperViewController: UIViewController {

    @IBOutlet weak var stepperView: UILabel!
    
    var currentStepperValue = 0.0 {
    didSet {
        stepperView.text = "the current stepper value is \(currentStepperValue)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
   currentStepperValue = sender.value
        }
    
   
}
