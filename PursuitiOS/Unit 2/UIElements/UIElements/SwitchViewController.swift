//
//  SwitchViewController.swift
//  UIElements
//
//  Created by Genesis Mosquera on 11/9/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController {

    @IBOutlet weak var switchLabel: UILabel!
    var lightSwitch = false {
    didSet {
    switchLabel.text = "is the light on? \(lightSwitch)"
    }
    }
    
    @IBAction func switchFlicked(_ sender: UISwitch) {
    
    lightSwitch = !lightSwitch

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
