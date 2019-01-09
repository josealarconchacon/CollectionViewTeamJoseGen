//
//  DetailViewController.swift
//  Second App
//
//  Created by Genesis Mosquera on 11/8/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var housePicture: UIImageView!
    @IBOutlet weak var houseName: UILabel!
    @IBOutlet weak var houseWords: UITextField!
    
    var houseIExpect: House!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        houseName.text = houseIExpect.name
        housePicture.image = houseIExpect.banner
        houseWords.text = houseIExpect.words
        view.backgroundColor = houseIExpect.colors
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
