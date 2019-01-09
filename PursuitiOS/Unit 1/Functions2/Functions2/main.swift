//
//  main.swift
//  Functions2
//
//  Created by Genesis Mosquera on 10/23/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation
//func hello(st:String) -> String{
//    if name == "Jevon"{
//        return "Hello, \(name)"
//    }
//}
//func freqOfNumArr(arr: [Int]) {
//    let sortNums = arr.sorted()
//    var counter = 1
//    for (i, num) in sortNums.enumerated() {
//        if i == sortNums.count - 1 {
//            print(String(num) + " occurs \(counter) times")
//            continue
//        }
//
//        if num == sortNums[i + 1] {
//            counter += 1
//            continue
//        } else {
//            print(String(num) + " occurs \(counter) times")
//            counter = 1
//        }
//    }
//}
//
//freqOfNumArr(arr: [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2])


//func freqOfNumArr(arr: [Int]) {
//    let sortNums = arr.sorted()
//    var counter = 1
//    for (i, num) in sortNums.enumerated() {
//        if i == sortNums.count - 1 {
//            print(String(num) + " occurs \(counter) times")
//            continue
//        }
//
//        if num == sortNums[i + 1] {
//            counter += 1
//            continue
//        } else {
//            print(String(num) + " occurs \(counter) times")
//            counter = 1
//        }
//    }
//}

//freqOfNumArr(arr: [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2])
//

//var myStringDict = [String: Int]()
//var myString = "We're flooding people with information. We need to feed it through a processor. A human must turn information into intelligence or knowledge. We've tended to forget that no computer will ever ask a new question."
//for eachLetter in myString {
//    if eachLetter == " " || eachLetter == "," || eachLetter == "'" || eachLetter == "." {
//        continue
//    }
//    let letter = String(eachLetter).lowercased() // defined it as a String so that we could lower-case it
//    if let value = myStringDict[letter] {
//        myStringDict[letter] = value + 1 // if nil it adds 1
//    } else {
//        myStringDict[letter] = 1 // loop loop loop
//    }
//}
//print(myStringDict)
//var mostCommonChar = "" // create new vars with empty strings
//var highestLetCount = 0 // create new var
//for (letter, letterCount) in myStringDict {
//    if letterCount > highestLetCount {
//        highestLetCount = letterCount
//        mostCommonChar = letter
//    }
//}
//print(mostCommonChar)
//
//func lastDigit(_ number: Int) -> Int


//let str = "123"
//
//let end = str.endIndex
//let lastCharIndex = str.index(before: end)
//let lastChar = str[lastCharIndex]
//
//print(Int(String(lastChar))!)

// FUNCTIONS
// create it, define it
// keyword, name, parameters, curly braces for block
//func spitsTheTruth(name:String, age:Int, someOtherThing: Bool) -> String {
//    return "\(name) is dope"
//}
//print(spitsTheTruth(name: "alan", age: 3, someOtherThing: true))
//// call it, use it
// anything you write under a return statement will not execute

//func getsBiggestNumber(numbers:[Int]) -> Int? {
//    guard !numbers.isEmpty else {return nil}
//
//    var biggestNumber = Int.min
//    for number in numbers {
//        if number > biggestNumber {
//            biggestNumber = number
//        }
//    }
//    return biggestNumber
//}
//let test = [6,3,2,1,0]
//print(getsBiggestNumber(numbers: test))
//let secondTest = [Int]()
//print(getsBiggestNumber(numbers: secondTest))
//
//func addsThree(input: Int?) -> Int? {
//    guard let safeInput = input else {return nil}
//    return safeInput + 3
//
//
//func assignsIdNumber(name: String) -> (name:String, id:Int) {
//    let randomNUmber = Int.random(in: 0...Int.max)
//    return (name, randomNUmber)
//}
//let myResult = assignsIdNumber(name: "alan")
//print(myResult)

// LEARN BUT DONT USE
//var myNumber = 3
//func addsTwo(input: Int) -> Int {
//    return input + 2
//}
//print(addsTwo(input: myNumber))
//print(myNumber)
//
//func multipliesByThree(number x:Int) -> Int{
//    return inout * 3
//}
//
//three(multipliedBy : 4)

//sample input: "Hello there! How's it going?"
// sample output: 8

func countVowels(input:String) -> Int {
    let vowels = "aeiou"
    var counter = 0
    for char in input {
        if vowels.contains(char) {
            counter += 1
        }
    }
    return counter
}
print(countVowels(input:"Alan"))

// sample input: [4,0,8,3,0]
// sample output: 96

func multiplysWithNoZeroes(input:[Int]) -> Int {
    var product = 1
    for number in input {
        if number != 0 {
            product *= number
        }
    }
    return product
}
let test = [4,0,8,3,0]
print(multiplysWithNoZeroes(input: test))

func getsMeTheUniqueValue(input: [Int]) -> Int {
    var endSolution = 0
    var frequencyDictionary = [Int: Int] ()
    for number in input {
        if frequencyDictionary[number] == nil {
            frequencyDictionary[number] = 1
        } else {
            frequencyDictionary[number]? += 1
        }
    }
    for pair in frequencyDictionary {
        if pair.value == 1 {
            endSolution = pair.key
        }
    }
    return endSolution
}
//bereatic parameters
print(getsMeTheUniqueValue(input: [4,0,8,3,0]))

func lastTest(grades:Int...) {
    print(grades)
}
lastTest(grades: 1)
lastTest(grades:78,98,100)

