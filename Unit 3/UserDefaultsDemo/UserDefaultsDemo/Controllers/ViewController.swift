//
//  ViewController.swift
//  UserDefaultsDemo
//
//  Created by Genesis Mosquera on 1/8/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // saving a name String to UserDefaults
        
        if let name = UserDefaults.standard.object(forKey: UserDefaultsKeys.name ) as?  String {
            print("welcome back, \(name)")
        } else {
            print("no name was found in UserDefaults")
            
          // if no name exists, then add your name
            // storing an object to UserDefaults
            UserDefaults.standard.set("Genesis M", forKey: UserDefaultsKeys.name)
        }
        
        // set background color
        if let color = UserDefaults.standard.object(forKey: "color") as? String {
            if color == "black" {
            view.backgroundColor = .black
            } else {
                view.backgroundColor = .white
            }
        } else {
            view.backgroundColor = .black
            print("no name was found")
            UserDefaults.standard.set("black", forKey: UserDefaultsKeys.color)
        }
     
        
        if let red =
    UserDefaults.standard.object(forKey: "color") as? String {
            if red == "red" {
                view.backgroundColor  = SliderViewController.sliderChanged(red)
                
            }
        }
    }
    
    @IBAction func toggleDarkMode(_ sender: UIBarButtonItem) {
        if let color = UserDefaults.standard.object(forKey: "color") as? String {
            if color == "black"{
                view.backgroundColor = .black
                UserDefaults.standard.set("white", forKey: UserDefaultsKeys.color)
            } else {
                view.backgroundColor = .white
                UserDefaults.standard.set("black", forKey: UserDefaultsKeys.color)
            }
        }
    }
}
