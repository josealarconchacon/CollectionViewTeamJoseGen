//
//  main.swift
//  Unit 1 Test
//
//  Created by Genesis Mosquera on 11/5/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation
//QUESTION 1
//func addTwoInts(_ a: Int, _ b: Int) -> Int {
//
//    return a + b
//
//}
//
//var mathFunction: (Int, Int) -> Int = addTwoInts
//print(addTwoInts(3, 4))
//print(mathFunction(3, 4))

// QUESTION 2
/*Write a function that removes all the vowels from a String.  Have "y" not be a vowel by default, but have a parameter that sets it.



var sampleStr = "These are the voyages of the starship Enterprise"
var yIsVowel = true
Should output:

"Ths r th vgs f th strshp ntrprs" */
//var sampleStr = "These are the voyages of the starship Enterprise"
//var yIsVowel = true
//let removalOfVowels: CharacterSet = ["a", "e", "i","o", "u", "y"]
//
//var arraySentence = sampleStr.components(separatedBy: CharacterSet.punctuationCharacters.union(removalOfVowels))
//
//print(arraySentence.map{$0})
//
//func removeVowels (sentence: String) -> String {
//    var newString = " " {
//        for letters in sampleStr {
//            if sampleStr.contains(CharacterSet){
//                continue
//            } else {
//                newString.append(letters)
//            }
//        }
//        return newString

//func removeVowels(sentence: String) -> String {
//    var newString = " " {
//        for letters in arraySentence{
//            if arraySentence.contains("y") {
//            continue
//            } else {
//              return  newString.append(letters)
//}
//}
//return newString
//}
//print(removeVowels(sentence: sampleStr))


// question 3
//a
//let arr = [41, 32, 93, 86, 24]
//let sortedArr = arr.sorted(by: {$0 < $1})
//print(sortedArr)
//b
//let arr = [41, 32, 93, 86, 24]
//let sortedArr = arr.sorted(by: {$0(1) < $1(1)})
//print(sortedArr)


// QUESTION 4
//let myArr = [3,2,1,8,1]
//
//let newArr = myArr.map { (a: Int) -> Int in
//
//    return a
//
//}
//
//var sum = 0
//
//for val in newArr {
//
//    sum += val
//
//}
//
//print(sum)

//let myArr = [3,2,1,8,1]
//
//let newArr2 = myArr.map { (a: Int) -> Int in
//
//    return 0
//
//}
//
//var sum = 0
//
//for val in newArr2 {
//
//    sum += val
//
//}
//
//print(sum)

//let myArr = [3,2,1,8,1]
//
//let newArr2 = myArr.map { (a: Int) -> Int in
//
//    return 2
//
//}
//
//var sum = 0
//
//for val in newArr2 {
//
//    sum += val
//
//}
//
//print(sum)

// question 5
//enum CompassPoint: String {
//    case north, south, east, west
//}
//
//let allDirections = CompassPoint.north
//
//switch allDirections {
//case .north:
//    print("Up")
//case .south:
//    print("Down")
//case .east:
//    print("Right")
//case .west:
//    print("Left")
//}


//question 6
//class Feature {
//    var description: String
//    init(description: String) {
//        self.description = description
//    }
//}
//class Point: Feature {
//    var x: Double
//    var y: Double
//    init(description: String, x: Double, y: Double) {
//        self.x = x
//        self.y = y
//        super.init(description: description)
//    }
//}
//a
//let taj = Point(description: "Taj Mahal", x: 54.5, y: 32.3)
// b
class Feature {
    var description: String
    init(description: String) {
        self.description = description
    }
}
class Point: Feature {
    var x: Double
    var y: Double
    init(description: String, x: Double, y: Double) {
        self.x = x
        self.y = y
        super.init(description: [String: x,String:y])
    }
}
//let taj = Point(description: "Taj Mahal", x: 5.84, y: 81.09)

//d. Define a subclass called City that is a child of Point. Give it two new properties: name and population. Be sure to define a designated initializer for it.

class City: Point {
    var name: String
    var population: Double
    init(description: String, x: Double, y: Double, name: String, population: Double) {
    self.name = name
    self.population = population
        super.init(description: description, x: x, y: y)
}
}
let barcelona = City.init(description: <#T##String#>, x: <#T##Double#>, y: <#T##Double#>, name: <#T##String#>, population: <#T##Double#>)

