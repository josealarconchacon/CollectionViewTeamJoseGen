//
//  main.swift
//  Unit1MidReview
//
//  Created by Genesis Mosquera on 10/18/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation



//COMPILER ERROR: at the time of building the Application
//RUNTIME ERROR: happens when the application is running

// DATA TYPES:
//String
//Int
//Double
// Bool
// Character
//String?

// COLLECTIONS - DATA STRUCTURES
// Arrays
// Dictionaries
//Sets

//types and variable

// TYPE ANNOTATION: specifies the type of var or expression
//let language: String = "Swift" // initialize to "Swift"
//let gradeA: Character = "A"
//========================================================
//let char = "b" // also a string, type inference - swift infers that "b" is a string
//let x = 14
//x = 10 // would not work because let is a constant
//type inference
//var char = "b"// Swift infers "b" is a String

//gradeA += B // cannot append to characters
//example that will not compile
//var age = 15
//age = 15.5 // will not compile because the top is a double and the bottom is an Int

//logical operators !not takes one operand
// = takes two operands
// !=
//var cold = true
//cold = !cold // redefined the variable
//if !cold {
//    print("no need for a jacket")
//} else {
//    print("brrr winter is coming")
//}
//
//
//
//
////control flow
//
//for number in myArray {
//    if number == 2 {
//    }
//}
//// this would not compute
//var pursuitIsAwesome = true
//if pursuitIsAwesome { // if block
//    // local variable
//    var time = 6 // pm
//} else { // else block
//    // time = 10
//}

// this block
var pursuitIsAwesome = true
if pursuitIsAwesome { // if block
 print("Pursuit is Awesome!!")
} else {
    print ("You should apply in 2019, really you should...")
}
// use ternary operator ?:
pursuitIsAwesome ? print("Yes it is") : print("forget about the competetition...")

//let age = 6
//switch age {
//case 0...4:
//    print ("those were the good old days where they listened or maybe?")
//case 5...8:
//    print("stars to be more independent")
//case 21...30:
//    print("enjoy those years")
//default:
//    print("how old are you???")
//
//}

//SWITCH STATEMENT WITH TUPLE
var alyson = (name:"Alyson", age: 21, color: "purple", pets: true)
var ashli = (name:"Ashli", age: 22, color: "blue", pets: false)
var diego = (name:"Diego", age: 22, color: "red", pets: false)

let fellows = [alyson, ashli, diego]

//print only fellows who don't have pets

for fellow in fellows {
    if !fellow.pets {
        print("\(fellow.name) does not have a pet")
    }
}

switch diego {
case (_, 0...21, _, _):
print("have a college life")
case (_, _, "purple", _):
    print("loves purple")
default:
    print("oops we missed you")
}

//========================================
//loops
//iterate through a string
//let sentence = "Welcome to Pursuit"
//var substring = ""
//var count = 0
//for letter in sentence {
//    substring += String(letter)
//    if count == 6 {
//        break
//    }
//    count += 1
//}
//print("substring is \(substring)")
//
//let cities = ["new york", "chicago", "stockholm", "paris", "tokyo"]

//for city in cities {
//    print(city)
//}

//for city in cities {
//    print(city)
//    if city == "paris" {
//        break // stop looping
//    }
//}

//print only odd numbers
//for num in 0...10 where num % 2 != 0{
////print(num)
//}
//
//for num in 0...10 {
//    if num % 2 == 0 {
//        continue
//}
//print(num)
//}

// label loops
//outerLoop: for i in 0...10 {
//    innerLoop: for j in 0...10 {
//        print(j)
//        continue outerLoop
//}
//}
//var firstLaunch = false
//repeat {
//    print ("hello world, welcome to my world changing app!")
//firstLaunch = true
//} while !firstLaunch

//strings
// string concatenation

//let firstName = "Bob" // string literal
//let lastName = "Marley"
//let fullName = firstName + lastName // concatenating firstName + lastName
//print("Reggae legend \(fullName)") // string interpolation


// unicode
//combining unicode =

//let unicode1 = "\u{61}"
//let unicode2 = "\u{301}"
//let acute = unicode1 + unicode2
//print("first unicode is \(unicode1)")
//print("second unicode is \(unicode2)")
//print("when combined becomes \(acute)")

// string.index is different from indexing in an Array
let goal = "To be the best programmer that I can be!"


//print first character using String.index
print("first character using String.Index is \(goal[goal.startIndex])")
// print first character using nil coelescing
print("first character using nil coelescing is \(goal.first ?? " ")")

// print last character
print ("last character using nil coelescing is \(goal.last ?? " ")")

// print last character using endIndex
print("last character using endIndex is \(goal[goal.index(before: goal.endIndex)])")

// print last character using refactoring
let lastCharacterIndex = goal.index(before: goal.endIndex)
print("last character using endIndex is \(goal[lastCharacterIndex])")


// print first character to 13th character
let thirteenthCharacterIndex = goal.index(goal.startIndex, offsetBy: 12)
let rangeIndex = goal.startIndex...thirteenthCharacterIndex
print("substring of fifth characrer to 13th chracter is \(goal[rangeIndex])")



//arrays
// type annotating an array of characters
//var characterArray: [Character] = [Character]() // empty array of characters
//characterArray.append("a")
//characterArray.append("e")
//print(characterArray)

// separates the sentence by words.
//var vacation = "I want to visit the Great Wall"
//var vacationArray = vacation.components(separatedBy: " ")
//print(vacationArray) // prints out all the words in the sentence into strings
//print(vacationArray.count)
//optionals

var temp: Double? // default value if not assigned is nik

temp = 49.5

print(temp ?? " ")
//nil coelescing - safe unwrapping
print("temp using nil coelescing is \(temp ?? 72.5)")

//optional binding - safe unwrapping
if let currentTemp = temp {
    print("optional binding temp is \(currentTemp)")
}

if temp != nil { // objective-c -not idiomatic swift, not swiftly
    print("checking for nil and force unwrapping temp is \(temp!)")
} else {
    print ("temp is nil")
}
print(temp)
//Jevon's Slack
let array = [1,2,3,4,5,1,2,5,7]

var trackingArray = [Int]()
var uniqueArray = [Int]()

for element in array{
    if !trackingArray.contains(element){
        trackingArray.append(element)
    } else {
        uniqueArray.append(element)
    }
}

print(trackingArray)
print(uniqueArray)


//
let myArr = [1,5,2,3,194,-32]
//print out all the numbers in the array
for i in myArr {
    print(i)
}
//print out the length of the array
print(myArr.count)
//print out the last element in the array
print(myArr.last ?? " ")
//print out the first element in the array
print(myArr.first ?? " ")
//print out the sum of the array
var sum = 0
for j in myArr {
    sum += j
}
print(sum)
