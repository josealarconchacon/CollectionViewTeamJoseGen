//
//  main.swift
//  Dictionaries
//
//  Created by Genesis Mosquera on 10/17/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation
//
//var optional: String?
//
//let safeOptional = optional ?? "default"
//
//print(safeOptional)

// if let saferOptional = readLine() ?? "default" // readline optional

// EXAMPLE of using nil coelescing
// var answerIsCorrect = false
// var answer = " "
// while answerIsCorrect == false {
// print ("enter yes or no")
// let safeOptional = readLine () ?? "default"
// if safeOptional == "yes" || safeOptional == "no" {
// answerIsCorrect =  true
// }
// }
// EXAMPLE of adding on to a string
// var answerIsCorrect = false
// var answer = ""
//answer += "a"
//print(answer)


// DICTIONARIES
//                 0    1         2         3
// var myArray = ["alan","alex", "name", "othername"]
//print(myArray [1])
// type annotate = there is a key and a value attached to that key. Every key has to be unique even though values could be different.

// type annotation     [typeForKey:typeForValue]
//var myFirstDictionary: [String:Int]
////
//myFirstDictionary = [
//    "alan":12,
//    "alex":100,
//    "someoneElse": 1000
//]
//
//print(myFirstDictionary ["alan"])

//var mySecondDictionary = [
//    12:"alan",
//    67:"alex",
//    200:"nate",
//    0:"someotherperson"
//        ]
//print(mySecondDictionary[0])

//myFirstDictionary["alan"] = 14
//myFirstDictionary["other"] = 16
//print (myFirstDictionary)
// how to remove
//myFirstDictionary["alan"] = 14
//myFirstDictionary["other"] = nil
//myFirstDictionary.removeValue(forKey: "alan")
//print(myFirstDictionary)

//force unwrap
//let unsafeValue = myFirstDictionary["alan"]!

//option binding
//if let safeValue = myFirstDictionary["alan"] {
//    print(safeValue)
//}
//nil coalescing operator : make sure that the right hand does not have an optional
//print(myFirstDictionary)
//let globalValue = myFirstDictionary["alan"] ?? 0
//print(globalValue)
// you can have a dictionary that is empty but you cannot have a key with an empty value
// emptying out a dictionary
//var myEmptyDictionary = [String:Bool] ()
//myFirstDictionary = [:]
//print(myFirstDictionary.count)
//print(myFirstDictionary.isEmpty)
//// emptying out a dictionary
//myFirstDictionary = [:]
//
//var myArrayDictionary: [String:[Int]]
//myArrayDictionary = [
//    "alex":[12],
//    "someonelse":[1000,21,4,6]
//]
//if var safeArray = myArrayDictionary ["someoneElse"] {
//    safeArray.append(90)
//}
//print(myArrayDictionary)

//var myFirstDictionary: [String:Int]
//myFirstDictionary = [
//    "alex":100,
//    "someoneElse": 1000,
//     "alan":123,
//     "josh":8784
//]
// for loop gets you the pairs in tuples
//for pair in myFirstDictionary {
//    print (pair.value) // tuple
//}

// for loop where you define the things inside the tuple
//for (myKey,myValue) in myFirstDictionary {
//    print(myValue) //or
//    // print(myKey,myValue)
//}
//for loop through all of the keys
//for key in myFirstDictionary.keys {
//    print(key)
//}
// for loop through all the values
//for value in myFirstDictionary.values {
//    print(value)
//}
//
//let myKeys = Array(myFirstDictionary.keys)
//print(myKeys)

//var myLastDictionary = [
//    3:"alan",
//    2:"alex",
//    89:"other",
//    0:"last"
//]
//print(myLastDictionary)
//// created an array that held all of the keys and then sorted the array into an order
//var myKeys = Array(myLastDictionary.keys)
////print(myKeys)
//myKeys.sort()
//print(myKeys)

//for key in myKeys {
//    print(myLastDictionary[key])
//}
// to safely unwrap

//for key in myKeys {
//    if let value = myLastDictionary[key] {
//        print(value)
//    }
//}

//var myDictionary = [
//    "alan":12,
//    "alex":19,
//    "josh":80
//]
//if let alexValue = myDictionary["alex"] {
//    print (alexValue)
//}
//var arrayOfDictionaries = [myDictionary, secondDictionary]
//var dictionaryIWant = arrayOfDictionaries[0]
//if let valueIWant = dictionaryIWant["alex"]{
//    print (valueIWant)
//}
//myDictionary["alan"]? += 2
//print(myDictionary)
//  QUESTION 1 Create an instance of a dictionary called citiesDict that maps 3 countries to their capital cities. Add two more countries to your dictionary.Translate at least 3 of the capital names into another language.
//// part 1
//var citiesDict: [String:String]
//citiesDict = [
//    "France":"Paris",
//    "Venezuela":"Caracas",
//    "Chile":"Santiago"
//            ]
//print(citiesDict)
//
//// part 2
//citiesDict["Ecuador"] = "Quito"
//citiesDict["Uganda"] = "Kampala"
//print(citiesDict)
//// part 3
//citiesDict.removeValue(forKey: "France")
//citiesDict["France"] = "প্যারিস"
//citiesDict.removeValue(forKey: "Ecuador")
//citiesDict["Ecuador"] = "কুইটো"
//citiesDict.removeValue(forKey: "Uganda")
//citiesDict["Uganda"] = "কাম্পালা"
//print(citiesDict)

//  question 2 Using someDict, add together the values associated with "Three" and "Five" and print the result.Add values to the dictionary for the keys "Six" and "Seven".Make a key caled "productUpToSeven" and set its value equal to the product of all the values.Make a key called "sumUpToSix" and set its value equal to the sum of the keys "One", "Two", "Three", "Four", "Five" and "Six".Remove the new keys made in the previous two steps Add 2 to every value inside of someDict.


//var someDict:[String:Int] = ["One": 1, "Two": 4, "Three": 9, "Four": 16, "Five": 25]
//var addOne = Array(someDict[three])
//var addTwo = Array
//var answeAdd = addOne + addTwo
//print(answerAdd)


//if let addOne = someDict["Three"] {
//    if let addTwo = someDict["Five"]{
//        print(addOne + addTwo)
//}
//}
//someDict["Six"] = 6
//someDict["Seven"] = 7
//print(someDict)

//var product = 1
//for pair in someDict {
//  product *= pair.value
//}
//print(product)

//var sumUpToSix = 0
//for newPair in someDict {
//    sum += newPair.value
//}
//print(sum)

//someDict["sumUpToSix"] = 0
//
//for pair in someDict {
//    if pair.key != "sumUpToSix" && pair.key != "Seven" {
//        someDict["sumUpToSix"]? += pair.value
//    }
//}
//print(someDict["sumUpToSix"])

//someDict["Six"] = nil
//someDict["Seven"] = nil
//print(someDict)
//myFirstDictionary["other"] = nil

//var addTwo = someDict
//for (key, value) in addTwo {
//    addTwo[key] = value + 2
//}
//print(addTwo)

//var myLastDictionary = [
//    3:"alan",
//    2:"alex",
//    89:"other",
//    0:"last"
//]

var myLitAut: [String:Double]
myLitAut = [
    "Mark Twain": 8.9,
"Nathaniel Hawthorne": 5.1,
"John Steinbeck": 2.3,
"CS Lewis": 9.9,
"Jon Krakaur": 6.1
        ]


//print(myLitAut["John Steinbeck"]!)
//
//myLitAut["Erik Larson"] = 9.2
//print (myLitAut)
//
//if let safeJ = myLitAut["Jon Krakaur"] {
//    if let safeM = myLitAut["Mark Twain"] {
//
//        if safeJ < safeM {
//            print ("\(safeM.key) has a higher score")
//        } else {
//            print ("\(safeJ.key) has a higher score")
//        }
//    }
//}

//for (key, value) in myLitAut {
//    print(key, value)
//}
//
//
////var someDict:[String:Int] = ["One": 1, "Two": 4, "Three": 9, "Four": 16, "Five": 25]
//var addOne = Array(someDict[three])
//var addTwo = Array
//var answeAdd = addOne + addTwo
//print(answerAdd)



// for loop where you define the things inside the tuple
//for (myKey,myValue) in myFirstDictionary {
//    print(myValue) //or
//    // print(myKey,myValue)
//}

var message = "hello world"
var code = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"

for letter in message {
  print (code[letter.description])

}
