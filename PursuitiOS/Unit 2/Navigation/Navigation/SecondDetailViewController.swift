//
//  SecondDetailViewController.swift
//  Navigation
//
//  Created by Genesis Mosquera on 11/26/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class SecondDetailViewController: UIViewController {

    var animal: Animal!
    @IBOutlet weak var animalPicture: UIImageView!
    @IBOutlet weak var animalName: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        
  animalPicture.image = animal.image
        animalName.text = animal.name
    }
    

    @IBAction func dismiss(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
