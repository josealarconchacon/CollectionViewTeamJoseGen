//
//  main.swift
//  Initializer
//
//  Created by Genesis Mosquera on 10/31/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

class Pokemon {
    var name: String
    var age: Int
    init (name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
// subclass
// creating initializer for a subclass
class FireTypePokemon: Pokemon {
    var numberOfAttacks: Int
    init (name: String, age: Int, numberOfAttacks: Int) {
        self.numberOfAttacks = numberOfAttacks
        super.init(name: name, age: age)
    }
}

//create watertype pokemon that inherits from Pokemon and has a property that I can set called swimmingDistance (Double)


class WaterTypePokemon: Pokemon {
    var swimmingDistance: Double
    init (name: String, age: Int, numberOfAttacks: Int, swimmingDistance: Double) {
        self.swimmingDistance = swimmingDistance
        super.init(name: name, age: age)
    }

//    convenience init (name: String) {
//    self.init(name: name, age: 2, swimmingDistance: 2.0)
//    }
//
//
//    convenience init (swimmingDistance: Double) {
//        self.init(name: "Starmie", age: 3, swimmingDistance: swimmingDistance)
//    }
}

//let otherWaterPokemon = WaterTypePokemon.init(name: "<#T##String#>", age: <#T##Int#>, numberOfAttacks: <#T##Int#>, swimmingDistance: <#T##Double#>)


//let myFifthPokemon = WaterTypePokemon.init(name: <#T##String#>, age: <#T##Int#>, numberOfAttacks: <#T##Int#>, swimmingDistance: <#T##Double#>)
let myFourthPokemon = FireTypePokemon.init(name: "vulpix", age: 3, numberOfAttacks: 2)
let firstPokemon = Pokemon.init(name: "pikachu", age: 7)
var thirdPokemon = firstPokemon
thirdPokemon.name = "charmander"
print(firstPokemon.name)

print("You have a \(firstPokemon.name) and it is \(firstPokemon.age) years old")
let secondPokemon = Pokemon.init(name: "squirtle", age: 8)
print(secondPokemon.name)


// CREATE A GRASSTYPE SUB CLASS THAT INHERITS FROM POKEMON, HAS A NEW PROPERTY CALLED VINE WHIP(BOOL). CREATE A DEFAULT INITIALIZER THAT SETS EVERYTHING UP AND 1 CONVIENIENCE INITIALIZER THAT DEFAULTS THE NAME TO "BULBASAUR"
class GrassTypePokemon: Pokemon {
    var vineWhip: Bool
    init (name: String, age: Int, vineWhip: Bool) {
        self.vineWhip = vineWhip
        super.init(name: name, age: age)
    }
    convenience init(age: Int, vinewhip: Bool) {
        self.init(name: "Bulbasaur", age: 4, vineWhip: true)
    }
}
let myFirstGrassPokemon = GrassTypePokemon.init(name: "oddish", age: 7, vineWhip: false)

// create a subclass called electrictypepokemon that has a new property called voltage(Int), create a default initializer for all the properties and a convenience initializer for every single property
class ElectricTypePokemon: Pokemon {
    var voltage: Int
    init (name: String, age: Int, voltage: Int) {
        self.voltage = voltage
        super.init(name: name, age: age)
    }
    convenience init(age: Int, voltage: Int) {
        self.init(name: "ivy", age: 5, voltage: voltage)
    }
}
let myElectricPokemon = ElectricTypePokemon.init(name: "pikachu", age: 3, voltage: 400)
