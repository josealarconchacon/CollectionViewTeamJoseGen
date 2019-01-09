//
//  SliderViewController.swift
//  UserDefaultsDemo
//
//  Created by Genesis Mosquera on 1/8/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController {

    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    private func defaultValues() {
        redSlider.value = 0/255
        blueSlider.value = 0/255
        greenSlider.value = 0/255
    }
    
    
    @IBAction func sliderChanged() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        let alpha = 1
        let color = UIColor(displayP3Red: red, green: green, blue: blue, alpha: CGFloat(alpha))
        view.backgroundColor = color
    
        
    }
}
