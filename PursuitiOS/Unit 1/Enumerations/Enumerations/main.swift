//
//  main.swift
//  Enumerations
//
//  Created by Genesis Mosquera on 10/26/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

// syntax
// define an enum called CompassPoint

// variables, constatnst, functions, closures, naming best practices is camel cased, e.g. myVar, my Function, myClosure
// built-in types or custom types should start with an uppercase e.g. Int, String, Character, MyCustomStruct, MyCustomClass

//enum definition for CompassPoint
enum CompassPoint {
    case north
    case south
    case east
    case west
}
// test out CompassPoint
let direction1 = CompassPoint.south
let direction2 = CompassPoint.east

let directions = [direction1, direction2]

for direction in directions {
//switch on an enum
switch direction {
case .north:
    print("winter is coming, or is it?")
case .south:
    print("heading to the cold")
case .east:
    print("welcome to the city of freedom")
case .west:
    print("welcome to la la land")
}
}
enum Continent: CaseIterable { // conforms to CaseIterable protocol
    case northAmerica
    case southAmerica
    case africa
    case asia
    case europe
    case australia
    case anartica
}

let continentChoice = Continent.northAmerica
switch continentChoice {
case .northAmerica:
    print("")
case .southAmerica:
    print("")
case.africa:
    print("")
case .europe:
    print("")
case .asia:
    print("")
case .australia:
    print("")
case .anartica:
    print("")
    }

// raw value
enum NYCBoros: String { // raw value of type String
    case queens = "Queens"
    case brooklyn = "Brooklyn"
    case manhattan = "Manhattan"
    case bronx = "Bronx"
    case statenIsland = "Staten Island"
}
// initializing a NYCBoros enum called borough
let borough = NYCBoros.init(rawValue: "Bronx")
if let boroughExist = borough {
    if boroughExist.rawValue == "Queens" {
    print("most diversed borough ever is \(boroughExist)")
} else {
    print("not a valid NYC Borough")
}
}
// implicit assigned value
// if you swap String for Int, you will receive numerical values
enum DaysOfTheWeek: String, CaseIterable {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday

// function in enums

func dayInfo() -> String {
    // self refers
    return "today is \(self.rawValue)"
}
}
// iterating through all the DaysOfTheWeek cases
for day in DaysOfTheWeek.allCases {
    print("day is \(day.rawValue)")
}

let monday = DaysOfTheWeek.monday
print(monday.dayInfo())


//associated values
enum Season {
    case fall
    case winter
    case summer
    case spring
}
// functions
//let fall = Season.fall("Nest time of the year", false)
//switch fall {
//// case .fall(let message, let isWarm) this becomes
//case let .fall(message, isWarm):
//    print("\(message)")
//    if !isWarm {
//        print("extra clothing may be needed")
//    }
//    case .winter
//}


// OBJECT ORIENTED PROGRAM

