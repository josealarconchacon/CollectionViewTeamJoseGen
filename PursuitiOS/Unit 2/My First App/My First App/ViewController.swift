//
//  ViewController.swift
//  My First App
//
//  Created by Genesis Mosquera on 11/6/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // outlets
    
    @IBOutlet weak var displayName: UILabel!
    
    @IBOutlet weak var whiteView: UIView!
    
    
    //button outlets
    
    @IBOutlet weak var redButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //disable
        //redButton.isEnabled = false
        //change image on a UIButton
        redButton.setImage(UIImage.init(named: "Pomegranate11"), for: .normal)
    }
  
    
    // actions
    
    @IBAction func colorWillChange(_ sender: UIButton) {
        var newColor:(color: UIColor?, name: String)?
        switch sender.tag {
        case 0:
            newColor = (.red, "Red")
        case 1:
            newColor = (.green, "Green")
        case 2:
       newColor = (.blue, "Blue")
        default:
            print("invalid tag")
        }
        if let newColorType = newColor {
            view.backgroundColor = newColorType.color
            displayName.text = "The background color is \(newColorType.name)"
        }
    }
}

