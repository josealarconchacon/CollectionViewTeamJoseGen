//
//  main.swift
//  Protocols
//
//  Created by Genesis Mosquera on 11/12/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation


// protocols define a blueprint, protocols do not provide implementations or default state, conforming class provides implementations
protocol Food {
    //properties
var calories: Int { get } // read-only
    var taste: Bool { get }
}
protocol Seed {
    //properties
    var plantType: String { set get } // read-write
  // initializers
    
    //methods
    func getSeedInfo()
}

class SunflowerSeed: Food, Seed {
    var calories: Int
     var plantType: String = "Sunflower"
    var taste: Bool = true
    
    init(calories: Int) {
        self.calories = calories
    }
    func getSeedInfo() {
        print ("this is a \(plantType) seed")
    }
    
}
protocol FullyNamed {
    var fullName: String { get }
}
//struct Person: FullyNamed {
//    var fullName: String
//}

// use some built-in protocols from Apple
class Person: CustomStringConvertible,
Equatable, Comparable {
    
    var age: Int
    var occupation: String
    
    var description: String {
        return "The person\'s age is \(age) and occupation is \(occupation)"
    }
    
    init(age: Int, occupation: String) {
        self.age = age
        self.occupation = occupation
    }

static func == (lhs: Person, rhs: Person) -> Bool {
    return
    lhs.age == rhs.age &&
    lhs.occupation == rhs.occupation
}
static func < (lhs: Person, rhs: Person) -> Bool {
    return  lhs.age < rhs.age
}
}
// create instances of the Person object
let kathy = Person(age: 20, occupation: "Data Scientist")
let genesis = Person (age: 21, occupation: "Software Developer")

//if kathy == genesis {
//    print("same person")
//} else {
//    print("different individuals")
//}

print(kathy)

let sortedPeople = [kathy, genesis].sorted(by: {$0 < $1})
print(sortedPeople)
