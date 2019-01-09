//
//  SegmentedViewController.swift
//  UIElements
//
//  Created by Genesis Mosquera on 11/9/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class SegmentedViewController: UIViewController {
    
    var currentSegmentIndex = 0 {
        didSet {
            segmentedLabel.text = "the current segment's index is \(currentSegmentIndex)"
        }
    }
    
    @IBOutlet weak var segmentedLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func segmentedControlPressed(_ sender: UISegmentedControl) {
        currentSegmentIndex = sender.selectedSegmentIndex
    }
    
    
}
