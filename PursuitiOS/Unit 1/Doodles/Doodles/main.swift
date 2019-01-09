//
//  main.swift
//  Doodles
//
//  Created by Genesis Mosquera on 10/12/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation
//
//var problemOne = ["split this string into words and print them on separate lines"]
//for index in 0...problemOne.count - 1{
//    print (problemOne [index])
//}

// Given a tuple with two strings. The first string is a ransom note, the second string being the characters from a magazine. Determine whether or not you can construct the ransom note using the characters from the magazine.

//Each letter from the magazine can only be used once. You can assume all letters are lowercased.
//
//Examples:
//You are given a string representing an attendance record for a student. The record only contains the following three characters:

//'A' : Absent.
//'L' : Late.
//'P' : Present.
//If a student has more than one 'A' or more than 2 continuous 'L's that student should not be rewarded. Print true if student is to be rewarded and False if they shouldn't.
//
//Example:
//
//Sample Input: "PPALLP"
//Sample Output: true
////
//var tuple = (number: 3, letters: "alan")
//tuple.number = 5
//tuple.letters = "genesis"
//print (tuple)

//Sample Input: "PPALLP"
//Sample Output: true
//let newYork = (state: "new york", events: 1.0)
//let newJersey = (state: "new jersey", events: 1.0)
//let connecticut = (state: "connecticut", events: 2.0)
//
//var eventsState = [1.0, 2.0]
//
//for player in eventsState {
//    if responseState == connecticut.state {
//        print ("Whoa \(responseName) is there any way you can make a trip to NY or NJ?")
//    } else {
//        print ()
//        print ("Your state has tons of hidden treasures.\nCare to explore?")
//    }
//    break
//}
//
//let aString = "danaerys, dad, cat"
//
//let isPalindrome = String (aString.reversed())
//
//if aString == isPalindrome {
//
//    print ("true")
//
//} else {
//
//    print ("false")
//
//}

//var battingLineup = ["Reyes", "Jeter", "Ramirez", "Pujols","Griffey","Thomas","Jones", "Rodriguez"]
//
//battingLineup.append("Suzuki")
//battingLineup.remove (at: 1)
//battingLineup.insert ("Tejada", at:1)
//battingLineup.remove(at: 5)
//battingLineup.insert ("Guerrrero", at: 5)
//battingLineup.remove(at: 0)
//battingLineup.insert("Reyes", at: 7)
//print (battingLineup)

//let numbers = [10,20,32,40,50]
//let target = 32
//for targetNumbers in numbers {
//if Int(numbers)! == 32 {
//    print ("true")
//} else {
//    print ("false")
//}
//}
//let words = ["alan", "alex", "i need a new name", "bat", "josh", "hello"]
//let myArraySlice = words [2...5]
//print (myArraySlice[2])

//let thirdListOfNumbers = [11, 26, 49, 61, 25, 40, 74, 3, 22, 23]
//var sumOfThird = 0
//for i in thirdListOfNumbers {
//sumOfThird += i
//}
//print (sumOfThird
//)
//question 25
//var myMatrix = [[10, 14, 12], [91, 1, 9], [31, 3, 21]]
//
//for innerArray in myMatrix {
//    for number in innerArray {
// print ("element \(number)")
//}
//}
// question 26
//var myMatrix = [[10, 14, 12], [91, 1, 9], [31, 3, 21]]
//
//let moreStates = ["Hawaii", "New Mexico", "Alaska", "Montana", "Texas", "New York", "Florida"]
//
//let target = "Hawaii"
//for targetmoreStates in numbers {
//if Int(numbers)! == 32 {
//    print ("true")
//} else {
//    print ("false")
//}
//}
//let animals = ["zebra","dog", "bat", "octopus"] // should print "octopus"
//var animal1 = animals[0].count
//var animal2 = animals[1].count
//var animal3 = animals[2].count
//var animal4 = animals[3].count
//
//for _ in animals {
//    if animal1 > animal2 && animal3 > animal4  {
//        print ("\(animals[0]) is the longest word")
//    } else {
//        if animal3 > animal2 && animal3 > animal1{
//            print ("\(animals[1]) is the longest word")
//        } else {
//            print ("\(animals[3]) is the longest word")
//        }
//    }
//}

let anotherHaiku = ["Even", "with", "insects", "some", "can",
                    "sing", "some",  "cannot"]
var newHaiku = (anotherHaiku.joined(separator: " "))
newHaiku.remove(at: newHaiku.index)
