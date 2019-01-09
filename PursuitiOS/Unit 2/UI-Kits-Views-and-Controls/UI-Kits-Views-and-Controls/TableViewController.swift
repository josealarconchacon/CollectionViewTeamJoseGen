//
//  ViewController.swift
//  UI-Kits-Views-and-Controls
//
//  Created by Genesis Mosquera on 11/28/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet weak var switchControl: UISwitch!
    
    
    @IBOutlet weak var switchCell: UITableViewCell!
    @IBOutlet weak var sliderControl: UISlider!
    
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var stepperControl: UIStepper!
    @IBOutlet weak var stepperLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchControl.isOn = false
        
        // set up slider
      // sliderControl.accessibilityValue()
        sliderLabel.text = "0"
        sliderControl.value = 0
        sliderControl.minimumValue = 0
        sliderControl.maximumValue = 20
        
        stepperLabel.text = "0.0"
        stepperControl.stepValue = 1
        stepperControl.minimumValue = 0
        stepperControl.maximumValue = 20
    }

    @IBAction func switchChanged( sender: UISwitch) {
        let color = sender.isOn ? UIColor.red : UIColor.white
        switchCell.backgroundColor = color
}
    @IBAction func sliderChanged( sender: UISlider) {
        sliderLabel.text =
        Int(sender.value).description
    }
    
    @IBAction func stepperChanged ( sender: UIStepper) {
        stepperLabel.text =
        sender.value.description
    }

}
