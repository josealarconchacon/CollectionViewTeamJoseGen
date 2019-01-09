//
//  main.swift
//  ProtocolLab
//
//  Created by Genesis Mosquera on 11/12/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation
// question 1
//class Human: CustomStringConvertible,
//Equatable, Comparable {
//    var name: String
//    var age: Int
//
//    var description: String {
//        return "The person\'s name is \(name) and age is \(age)"
//    }
//
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//    static func == (lhs: Human, rhs: Human) -> Bool {
//        return
//            lhs.name == rhs.name &&
//                lhs.age == rhs.age
//    }
//
//    static func < (lhs: Human, rhs: Human) -> Bool {
//return  lhs.name < rhs.name
//    }
//}
//
//    let ari = Human(name: "Ari", age: 25)
//    let eli = Human(name: "Eli", age: 25)
//let pritesh = Human(name: "Pritesh", age: 26)
//let antonio = Human(name: "Antonio", age: 21)
//let diego = Human(name: "Diego", age: 24)
//
//if ari == eli {
// print("same human")
//} else {
//    print("different humans")
//}
//
//let sortedHumans = [ari, eli, pritesh, antonio, diego].sorted(by: {$0 < $1})
//print(sortedHumans)

// question 2
protocol Vehicles {
    var numberOfWheels: Int { get }
    
    func drive()
    }

init(numberOfWheels: Int) {
    
    self.numberOfWheels = numberOfWheels
}

struct car: Vehicles {
    func drive() {
    
    }
    var numberOfWheels: Int
    
}
