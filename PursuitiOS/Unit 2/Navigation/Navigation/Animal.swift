//
//  Animal.swift
//  Navigation
//
//  Created by Genesis Mosquera on 11/26/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class Animal {
    var name: String
    var image: UIImage
    var animalClass: String
    init(name: String, image: UIImage, animalClass: String) {
        self.name = name
        self.image = image
        self.animalClass = animalClass
    }
    static var allAnimals = [Animal.init(name: "Elephant", image: UIImage.init(named: "elephant")!, animalClass: "Mammal"), Animal.init(name: "Dolphin", image: UIImage.init(named: "dolphin")!, animalClass: "Mammal"), Animal.init(name: "Salamander", image: UIImage.init(named: "salamander")!, animalClass: "Amphibian"), Animal.init(name: "Gecko", image: UIImage.init(named: "gecko")!, animalClass: "Reptile"), Animal.init(name: "Hummingbird", image: UIImage.init(named: "hummie")!, animalClass: "Bird")]
    
    
}
