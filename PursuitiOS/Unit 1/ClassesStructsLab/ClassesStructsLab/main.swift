//
//  main.swift
//  ClassesStructsLab
//
//  Created by Genesis Mosquera on 10/29/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation
//  QUESTION 1
class Giant {
    var name: String
    var weight: Double
    var homePlanet: String
    
    init(name: String, weight: Double, homePlanet: String) {
        self.name = name
        self.weight = weight
        self.homePlanet = homePlanet
    }
}

let fred = Giant(name: "Fred", weight: 340.0, homePlanet: "Earth")

fred.name = "Brick"
fred.weight = 999.2
fred.homePlanet = "Mars"


// QUESTION 2
struct Alien {
    var name: String
    var height: Double
    var homePlanet: String
}
var bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")

bilbo.name = "Jake"
bilbo.height = 1.42
bilbo.homePlanet = "Saturn"
