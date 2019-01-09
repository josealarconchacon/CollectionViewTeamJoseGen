//
//  ViewController.swift
//  LifeCycle
//
//  Created by Genesis Mosquera on 11/9/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The view has loaded!!!")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("OMG the view is about to appear")
    }
    override func viewWillLayoutSubviews() {
        print("The app is about to layout its subview")
        
    }
    override func viewDidLayoutSubviews() {
        
        print("the app laid out the subview")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("The view has appeared")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("YAY view will disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Yay view has disappeared")
    }
}

