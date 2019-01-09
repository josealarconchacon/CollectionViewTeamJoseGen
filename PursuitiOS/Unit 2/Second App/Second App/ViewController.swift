//
//  ViewController.swift
//  Second App
//
//  Created by Genesis Mosquera on 11/8/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myHouses = [House]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        myHouses = HouseFactory.houses
        print(myHouses.first?.name)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // MAKE SURE THE PLACE I AM SEGUIEING TO CAN BE CASTED AS MY CUSTOM VIEWCONTROLLER 
        guard let destination = segue.destination as?
        DetailViewController,
            let button = sender as? UIButton else {return}
        // SET THE VARIABLE ON THE DESTINATION VC TO SOMETHING RIGHT BEFORE WE SEGUE
        destination.houseIExpect = myHouses[button.tag]
    }

}

