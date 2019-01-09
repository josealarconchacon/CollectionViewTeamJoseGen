//
//  SliderViewController.swift
//  UIElements
//
//  Created by Genesis Mosquera on 11/9/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController {

    @IBOutlet weak var sliderView: UILabel!
        var currentSliderValue: Float = 0.0 {
    didSet {
    sliderView.text = "the current value is \(currentSliderValue)"
    }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
}
    @IBAction func sliderChanged(_ sender: UISlider) {
        currentSliderValue = sender.value
    }
    
}
