//
//  main.swift
//  Structs-and-Classes
//
//  Created by Genesis Mosquera on 10/26/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

//vocabulary
// base class, encapsulation, inheritance

// object oriented programming

// create an instance of the Car struct
var nissan = Car() // nissan is an instance of Cars()
nissan.make = "Nissan"
nissan.model = "Rogue"
nissan.year = 2009

//uses the default struct memberwise initializer
// NB: only available in structs, NOT CLASSES
var ford = Car(make: "Ford", model: "Mustang", year: 1999)

// array of cars 
let cars = [nissan, ford]

for car in cars {
    print("car make is \(car.make)")
}

//create fellow instances
let antonio = Fellow(name: "Antonio", stressLevel: 10, age: 19, cohort: 5.3)
let diego = Fellow(name: "Diego", stressLevel:9, age: 32, cohort: 5.3)
let ashli = Fellow(name: "Ashli", stressLevel: 5, age: 20, cohort: 5.3)

//create an array of fellow
let fellows = [antonio, diego, ashli]

//iterate through fellows
for fellow in fellows

