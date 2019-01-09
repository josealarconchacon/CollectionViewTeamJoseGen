//
//  Fellow .swift
//  Structs-and-Classes
//
//  Created by Genesis Mosquera on 10/26/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

class Fellow {
    var name = ""
    var stressLevel = 0
    var age = 0
    var cohort: Double
    
    // custom initializer
    init(name: String, stressLevel: Int, age: Int, cohort: Double) {
        self.name = name
        self.stressLevel = stressLevel
        self.age = age
        self.cohort = cohort
    }
}

