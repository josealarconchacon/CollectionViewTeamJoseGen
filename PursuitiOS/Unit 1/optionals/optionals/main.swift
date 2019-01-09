//
//  main.swift
//  optionals
//
//  Created by Genesis Mosquera on 10/15/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

//var temperature = 75
// when the thermostat is broken, you can give it a value of nil

//var temperature: String?
//
//print(temperature)

//if temperature < 71 {
//    print ("turn up the heat!" )
//} else {
//    print ("keep it where it is")
//}

//var optional Bool: Bool? = true

//var temperature: Int?
//temperature = 33
//print (temperature)

//var temperature: Int?

//temperature = 34

//if temperature != nil {
//print (temperature)
//} else {
//print ("it is broken!")
//
//}
//
//var tempThatIsNotAnOptional = 24
//temperature = tempThatIsNotAnOptional
//tempThatIsNotAnOptional = temperature!
//print (tempThatIsNotAnOptional)
//
//var optionalTest: String? = "alan"
//print (optionalTest!)

// above, we tried unwrapping the string. it is necessary to define the string, otherwise it will crash

//var mainCharacter: String?
//
//print (mainCharacter)

//var mainCharacter: String? = "Meryl Streep"
//print (mainCharacter!)

//   optional binding
//var myName: String? = "Alan"
// if I'm allowed to create a variable out of my name then print a variable
//if let name = myName {
//    print (name)
//} else {
//    print ("you don't have a name")
//}

// declare two optionals and unwrap them using binding

//var myAge: Int?
//
//if let age = myAge {
//    print (age)
//} else {
//    print ("you are ageless")
//}

// example
//var myAge: Int?
//var myPets: Int?

//if let age = myAge {
//    print (age)
//} else {
//    print ("forever young")
//}

//if let pets = myPets {
//    print (pets)
//} else {
//    print ("get a pet")
//}
// ALTERNATIVE
//if let age = myAge {
//    if let pets = myPets {
//        print ("you are \(age) years old, and you have \(pets) pets")
//    }
//} else {
//    print ("forever young")
//}
// if you give one a value
//var myAge: Int?
//var myPets: Int?
//myAge = 7
//
//if let age = myAge {
//    if let pets = myPets {
//        print ("you are \(age) years old, and you have \(pets) pets")
//    }
//print (" you are \(age) years old")
//} else {
//    print ("forever young")
//}
// ANOTHER ALTERNATIVE, NOT EQUALLY AS GOOD. The comma works as an && rather than as an OR. This means that both conditions must be true.

//var myAge: Int?
//var myPets: Int?
//myAge = 7
//myPets = 3
//
//if let age = myAge, let pets = myPets {
//    print (age, pets)
//}
//
//var myName: String? = "Alan"
//var myMiddleName: String?
//print (myName)
// unwrapping, safely = using optional binding
// NESTING
// by creating a let name variable, we are redefining the variable so that it is no longer an optional
//if let name = myName {
//    if let middleName = myMiddleName {
//print ("your name is \(name) \(middleName)")
//    }
//    print ("your name is \(name)")
//}
// this is the way you could do it in one line but for it to work both conditions need to pass. Example below would not pass because myMiddleName is undefined.
//if let name = myName, let middleName = myMiddleName {
//    print ("test")
//} // will crash

//var bookTitle: String = "The Hobbit"
//var secondTitle: String?
//var author: String = "J.R.R. Tolkien"
//var coAuthor: String?
//secondTitle = "There and Back Again"
//
//if let otherAuthor = coAuthor {
//    print (author, coAuthor)
//} else {
//    print (author)
//}
//var bookEndorsement: String?
//if let endorsement = bookEndorsement{
//    print (endorsement)
//}
//
//var firstName: String? = "alan"
//var lastName: String? = "holguin"
//
//if let first = firstName {
//    if let last = lastName {
//        print (first, last)
//    }
//}
//if let first = firstName, let last = lastName {
//    print (first, last)
//}
//let response: String? = "3"
//
//if let safeResponse = response, let responseAsInt = Int (safeResponse) {
//    print (responseAsInt + 3)
//}
// Let's create an array. Arrays can hold any type of information.
//var myArray = [7,3,4,5,8]

//for _ in 0...5 {
//
//    print (myArray.popLast()!)
//}
// by giving it the option to break, it breaks out of the loop, like a contingency statement. Guarding everything that proceeds it
//for _ in 0...5 {
//    guard let lastThing = myArray.popLast() else {break}
//    print (lastThing)
//}
//// guard statements need to have "guard", the condition that we are guarding for, and the break statement
//var myTest: String? = "hey"
//for index in 0...5 {
//    guard index < 5 else {break}
//    print (myArray[index])
//
//}

//var myArrayWithNils = [2,3,4,nil,2,5,nil]
//// continue is for continuing the loop, from 0 to the last element, questioning that the element has a variable that it can turn into an element. If not true. It will loop back to the next variable until it is done
//for index in 0...myArrayWithNils.count - 1 {
//    guard let element = myArrayWithNils[index] else { continue }
//print (element)
//}
// firstly, unwrap the outermost wrap
// you are not allowed to unwrap a nil, cannot unwrap something that does not have a declared value
//var arrayExample: [Int?]? = [2,3,nil,4,nil]
//print (arrayExample![2]!)
//
//if let safeArray = arrayExample {
//    for number in safeArray {
//        guard let safeNumber = number else {continue}
//        print (safeNumber)
//    }
//}
// Bool example

//var boolExample: Bool? = true
//// force unwrap
//print (boolExample!)
// option binding

//if let safeBool = boolExample {
//    print (safeBool)
//}
//for _ in 0...5 {
//    guard let safeBool = boolExample else {break}
//    print (safeBool)
//}

//let myFirstInt: Int? = 7
//
//print(myFirstInt == 7)

// since both are nil they equate
//var myFirstInt: Int?
//var mySecondInt: Int?
//print (myFirstInt == mySecondInt)

//var myPokemon: String? = "pikachu"
//
//print (myPokemon ?? "bulbasaur")

//var mySafePokemon = myPokemon ?? "bulbasaur"
//print (mySafePokemon)

//var myPokemon: String?
//var safePokemon = myPokemon ?? "bulbasaur"
//print (safePokemon)

//var myName: String? "alan"
// keeping it as a wrapped optional
//var upperCasedName = myName?.uppercased()
//print (upperCasedName)

//
//var upperCasedName = myName!.capitalized
//print (upperCasedName)

//var myName: String?
//if let safeName = myName?.capitalized {
//    print (safeName)
//}

// HOW TO CHECK FOR SPACES

//let myString = "this is my test for yall"
//
//for char in myString {
//    if char == " " {
//        print ("I found a space!!")
//    }
//}
//
//let myArray = [2,3,4,67]
//let myString = "alan"
//var myStringIndex = [Int]()
//var index = 0
//for char in myString {
//    myStringIndex.append (index)
//    index += 1
//}
//print (myStringIndex)
//
//var indexForString = myString.index(myString.startIndex, offsetBy: 3)

//print (myArray.contains(4))

//for number in myArray {
//    if number == 4 {
//        print ("you have a four!")
//    }
//}
//
//let myStringArray = ["alan", "alex", "other name"]
//myStringArray.contains ("alan")
// KEEPING COUNTER
//var counter = 0
//let myArray = ["alan", "alex", "alan", "alex", "alan","alex", "alan", "alex", "alan", "alex"]
//
//var emptyArray = [String]()
//
//for name in myArray {
//    if name == "alan" {
//        emptyArray.append ("alex")
//        counter += 1
//    } else {
//emptyArray.append(name)
//}
//}
//print (counter)
//print (emptyArray)
