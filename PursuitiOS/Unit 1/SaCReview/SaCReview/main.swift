//
//  main.swift
//  SaCReview
//
//  Created by Genesis Mosquera on 10/30/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

class Animal { // base class -
    //properties
    var legs: Int
    var eyes: Int
    var mammal: Bool // TODO: create an enum AnimalSpecies
    
    // initializer
    init (legs: Int, eyes: Int, mammal: Bool) {
        //left side is setting the instance properties
        // right side is input coming from user e.g Animal.init(legs: 4, eyes: 2, mammal: false)
        self.legs = legs // self refers to the instnace of the Dog() e.g. ramone.legs = 4
        self.eyes = eyes
        self.mammal = mammal
    }
    // instance method
    func description () {
        print("This is an Animal Class")
    }
}

class Dog: Animal { // inherits for an Animal
    // properties
    
    // methods
    
    //instance methods
    override func description() {
        print("I am an Animal and I have \(legs) legs") // legs are being inherited from the Animal() class
    }
    func isCute() -> Bool {
        return true
    }
}
// let's test our Dog() class
//create an instance of a Dog() called ramone

let ramone = Dog.init(legs: 4, eyes: 2, mammal: true)

//access the instance method description()
ramone.description()
