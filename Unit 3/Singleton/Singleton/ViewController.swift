//
//  ViewController.swift
//  Singleton
//
//  Created by Genesis Mosquera on 12/13/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var catImage: UIImageView!
    
    @IBOutlet weak var catActivity: UIActivityIndicatorView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //singleton's are available in every VC
        APIClient.getMeACat { (catPhoto) in
            DispatchQueue.main.async {
                self.catImage.image = ImageClient.getMeAPicture(url: catPhoto.file)
            }
        }
        
    }


}

