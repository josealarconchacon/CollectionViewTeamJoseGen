//
//  ViewController.swift
//  Flashlight
//
//  Created by Genesis Mosquera on 11/7/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var toggle = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func switchColor(_ sender: UIButton) { if toggle {
        view.backgroundColor = .white
        toggle = false
        return
        }
        view.backgroundColor = .black
        toggle = true
        return // red, enabled, original title 
    }
    
}

