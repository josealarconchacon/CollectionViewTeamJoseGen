//
//  main.swift
//  MidUnit1
//
//  Created by Genesis Mosquera on 10/19/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation
//QUESTION 1
//var i = 1
//
//while i <= 10 {
//    print(i)
//    i += 1
//}

// QUESTION 2
//var sum = 0
//for i in 1...10 {
//    sum += i
//}
//print(sum)

// QUESTION 3
//let aSentence = "Whatever you are, be a good one."
//var newSentence = aSentence
//let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
//newSentence.removeAll(where: { vowels.contains($0) })
//print(newSentence)

//var newSentenceArray: [Character] = [Character]()
//
//let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
//var vowelSum = 0
//print(newSentenceArray)
//for i in newSentenceArray {
//    if newSentenceArray.contains(vowels) {
//        vowelSum += 1
//            print (vowelSum)
//}
//}
//for _ in 0..<randomWord.count {
//    realDash += "_ "
//}

//for newSentence.removeAll(where: { vowels.contains($0) })
//    vowelSum += 1
//    print (vowelSum)
//}
//print(newSentence)
//}
//    .contains
//let sentenceArray = aSentence
//for vowel in sentenceArray {
// if aSentence == vowels
//}


//        emptyArray.append ("alex")
//        counter += 1
//    } else {
//emptyArray.append(name)
//}
//}
//print (counter)

//  QUESTION 4
//var grade = 97
//switch grade {
//case 0..<65:
//    print ("F")
//case 65...69:
//    print("D")
//case 70...79:
//    print("C")
//case 80...89:
//    print("B")
//case 90...99:
//    print("A")
//case 100:
//    print("A+")
//default:
//    print("Enter your grade")
//}
// QUESTION 5
//var anInt: Int?
//anInt = 7
//if let newInt = anInt {
//print(newInt + 10)
//}
// QUESTION 6
let animals = ["zebra","dog", "bat", "octopus"] // should print "octopus"
var animal1 = animals[0].count
var animal2 = animals[1].count
var animal3 = animals[2].count
var animal4 = animals[3].count

for _ in animals {
    if animal1 > animal2 && animal3 > animal4  {
        print ("\(animal1) is the longest word")
    } else {
        if animal3 > animal2 && animal3 > animal1{
print ("\(animal2) is the longest word")
        } else {
print ("\(animal4) is the longest word")
}
}
}
// QUESTION 7
//let array1 = ["Hello", "there,"]
//let array2 = ["how", "are", "you"]
//let array3 = ["let's", "code", "!"]
//let allArrays = array1 + array2 + array3
//let sentence = array1 + array2 + array3
//print(sentence.joined(separator: " "))
///======
// TRIAL & ERRORS

//print(allArrays.joined(), terminator: " ")

//let nestedNumbers = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
//let joined = nestedNumbers.joined(separator: [7])
//print(Array(joined))
//
//for index in allArrays.joined() {
//print(index, terminator: " ")
//}

//var vacation = "I want to visit the Great Wall"
//var vacationArray = vacation.
//print(vacationArray)

//  QUESTION 8
//let haikuWords = ["The", "snow", "is", "melting", "and", "the", "village",
//                  "is", "flooded", "with", "children"]
//
//print(haikuWords.joined(separator: " "))


//QUESTION 9 remove if more than 4 letters

//let anotherHaiku = ["Even", "with", "insects", "some", "can",
//                    "sing", "some",  "cannot"]
//
//var newHaiku = (anotherHaiku.joined(separator: " "))
//var substring = " "
//var count = 0
//for letter in newHaiku{
//substring += newHaiku(letter)
//    if count == 4 {
//break
//}
//count += 1
//}
//print("new haiku is \(newHaiku)")

//var myTest: String? = "hey"
//for index in 0...5 {
//    guard index < 5 else {break}
//    print (myArray[index])

//
//for newHaiku.removeAll(where: {newHaiku.count < 5})
//print(newHaiku)
