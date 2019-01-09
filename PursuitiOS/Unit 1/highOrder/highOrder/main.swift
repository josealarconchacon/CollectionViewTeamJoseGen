//
//  main.swift
//  highOrder
//
//  Created by Genesis Mosquera on 10/25/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation
// CLOSURES ARE JUST INSTRUCTIONS
// $0 and $1 represent the numbers as they are being seen
let array = [4,5,3,2,0,1]

// sorted lets you check with the first and the next one
print(array.sorted{ $0 < $1})

// array.filter() {
//    $0 % 2 == 0
// }

// MAPS - THEY ARE USEFUL IN LOOKING THROUGH A LARGE NUMBER OF DATA
//let mapNumbers = [2,36,75,8]
//let mapStrings = ["cat", "dog", "bird","shark","tiger"]
//
//print(mapNumbers.map{ (currentNumber) -> Int in
//    return currentNumber - 3
//})
//print(mapNumbers.map(){$0 - 3})
//print(mapNumbers)
//
//mapStrings.map { (currentString) -> String in
//    return currentString + " " + "is dope"
//}
//print(mapStrings.map{$0 + " " + "is dope"})
//
//print(mapStrings.map({(currentString) -> Int in
//    return currentString.count
//}))
//mapStrings.map{$0 + "yay"}.sorted{$0<$1}
//
//let myVar: String = "hey"
//let mySecondVar = "heyyy"
//
//func printsManyTimes: Int, thingsToDo: () -> ()) {
//for _ in 1...numberOfTimes {
//    thingsToDo()
//}
//}
//
//var myClosure = {() -> () in
//print("we love swift")
//}
//
//printsManyTimes(numberOfTimes: 3, thingsToDo: myClosure)

let myNewNumbers = [3,4,56,768]
print(myNewNumbers.reduce(0, { (currentValue, nextValue) -> Int in
    currentValue + nextValue
}))
myNewNumbers.reduce(0) { $0 + $1}

print(myNewNumbers.reduce(Int.max, { (currentValue, nextValue) -> Int in
    currentValue / nextValue
}))

print(myNewNumbers.reduce(0) { (currentSmallestNumber, nextValue) -> Int in
    if nextValue < currentSmallestNumber {
        return nextValue
    } else {
        return currentSmallestNumber
    }
})

print(myNewNumbers.reduce(Int.max){ $0 < $1 ? $0:$1})

let myString = "this is our test!"

print(myString.reduce("") { (currentString, nextCharacter) -> String in
    if nextCharacter.description != " " {
        return currentString + nextCharacter.description
    } else {
        return currentString
    }
})

print(myString.reduce(""){$1.description != " " ? $0 + $1.description : $0})

//                        a  ?  b   : c
let myTest = 3 > 1 ? "oh snap" : "noooo"

