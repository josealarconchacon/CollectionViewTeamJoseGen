//
//  main.swift
//  Arrays
//
//  Created by Genesis Mosquera on 10/11/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

//var tuple = (number: 3, letters: "alan")
//tuple.number = 5
//tuple.letters = "genesis"
//print (tuple)

//Data collection type
// tuples in arrays
//let myFirstArray: [(number : Int, letters: String, myBool: Bool)]
// cannot have bool statement in just one, it must be in both
//
//let mySecondArray = [2,3,5,6]// array of Int
//let colorsArray = ["red", "blue", "green"]
//
//let typeAnnotation: String = "Alan" // or let typeAnnotation = "Alan"

//var array = [2,3,4,5,6]

//for number in array {
//    print (number)
//}
// Adding to your array
//array.append (8)
//print (array)

// Adding into a certain position
//array.insert (7, at: 2)
//print (array)

// Removing at a specific position
//array.remove (at: 3)
//array.insert (newElement: Int, at: Int)

//Catch && pop last (removing the last char)
//let theLastThing = array.popLast()
//print (array)

//let theLastThing = array.popLast()
//print (theLastThing!)

// Determining the size of the array
//
//var otherArray = [1,2,3,4,5]
//print (otherArray [otherArray.count - 1])
//print (otherArray.count)

// checking if array is empty
//let isEmpty = otherArray.isEmpty
//print (isEmpty)

// a potential first
//otherArray.first

// a potential last
//otherArray.last

// an array reverse
//otherArray.reverse  ()
//print (otherArray)

// reverseD
//let myReversedArray = otherArray.reversed()
//print (otherArray)
//print (Array (myReversedArray))
//
//var myArray = [3,4,5]
//vay mySecondArray = myArray
//mySecondArray.append(9)
//print (myArray)
//print (mySecondArray)

//      QUESTION 1
//var array = ["orange", "red", "yellow", "turquoise", "lavender"]
//array.remove (at: 1)
//array.remove(at: 2)
//array.append ("are some of my favorite colors")
//print (array)
//
// QUESTION 2
//var westernStates = ["California", "Oregon", "Washington", "Idaho", "Illinois", "Kansas"]
//westernStates.remove (at: 4)
//westernStates.remove(at: 4)
//print (westernStates)
//
//  QUESTION 3
//var moreStates = ["Hawaii", "New Mexico", "Alaska", "Montana", "Texas", "New York", "Florida"]
//var continentalUs = ["New Mexico", "Alaska", "Montana", "Texas", "New York", "Florida"]
//
//if (moreStates.contains (continentalUs)) {
//    print ("true")
//} else {
//    print ("false")
//}

//var winningNames = ["alan", "alex", "josh"]
//var theNameIPicked = "alan"
//print (winningNames.contains (theNameIPicked))

//
//let myTestScores = [1,23,4,5,7,8]
//let score = myTestScores[4]
//let myFirstThreeScores = myTestScores [3...5]
//print (score)
//print (myTestScores)
//
//let allTestScores = myFirstThreeScores + myTestScores
//print (allTestScores)
//
//let words = ["alan", "alex", "i need a new name", "bat", "josh", "hello"]
//let myArraySlice = words [2...5]
//print (myArraySlice[2])
//
// Indeces are dependant on how many numbers are inside of them
//var numbers = [24,5,7,85,68]
//numbers [2] = 100
//print (numbers)

//adding on a value
//var numbers = [24,5,7,85,68]
//numbers [2] *= 100
//print (numbers)

//for i in 0..<numbers.count - 1{
//numbers [i] += 2
//}
//print (numbers)

//
//for index in 0...numbers.count - 1{
//    print (numbers [index])
//}

//let myName = "Alan"
//let myNameAsArray = Array(myName)
//print (myNameAsArray)
//print (myNameAsArray[1])
//
//let array = [4,5,6,7]
//
//var winningNumbers = [2,4,7,8]
//var theNumberIPicked = 9
//print (winningNumbers.contains (theNumberIPicked))

//Strings
//var winningNames = ["alan", "alex", "josh"]
//var theNameIPicked = "alan"
//print (winningNames.contains (theNameIPicked))

//let array = ["alan", "alex", "josh"]
//let randomElement = array.randomElement()
//print (randomElement)
//
//let randomString = "alan".randomElement()
//print (randomString)
//let randomBool = Bool.random()
//let ranDouble = Double.random(in:0...75)
//print (ranDouble)
//
// for Ints
//
//Int.random(in: 0...2)

let myMatrix = [[1,2,4,4],
[5,6,7,8],
[9,10,11,12]
]
print (myMatrix [0])
print (myMatrix [1])
print (myMatrix [2])

//let myMatrix = [["alan", "alex"],
//                ["bob", "bret", "beatrix"],
//                ["carson", "chris"]
//]
//print (myMatrix [0][1])

// initializing = create and give default value
// var name = "Jabeen"

//
//let myArr = [1,5,2,3,194,-32]

// to print out all characters in each line
//for i in myArr {
//print (i)
//}
// to print out the length in the array
//print (myArr.count)
//print ("The count of this array is \(myArr.count)")

// to print out the last character in the array without receiving an Optional statement
//print ("The last element of the array is \(myArr[myArr.count-1])")

// optional binding
// conditional unwrap
//if let lastElement = myArr.last { // returns an optional Int?
//print ("the element is \(lastElement)")
//} else {
//    print ("no elements")
//}

//print out the first element in the array
//if let firstElement = myArr.first {
//    print ("the first element is \(firstElement)")
//} else {
//    print ("no elements")
//}

//print out the sum of the arrays
//var sumOfArr = 0
//for i in myArr {
//sumOfArr += i
//}
//print (sumOfArr)

//let myNewArr = [5, 10, 5, 0]
//var sumOfNew = 0
//for i in myNewArr {
//    sumOfNew += i
//}
//print (sumOfNew)

//print out the elements of the multidimensional array
//let theMatrix = [[1, 2, 3],
//                 [4, 5, 6],
//                 [7, 8, 9]]

// print the first array in the matrix
//print ("first array in matrix \(theMatrix [0])")

// first element of the first array in the matrix - top left [1, 2, 3]
//print ("the first element of the first array in the matrix \(theMatrix [0][0])")

// first element of the first array in the matrix - bottom left [1, 2, 3]
//print ("the bottom left corner is \(theMatrix [2][0])")
//print ("the bottom left corner is \(theMatrix[theMatrix.count-1] [0])")

//print out top right corner
//print ("the top right corner is \(theMatrix [0] [theMatrix.count-1])")

//print the bottomg right corner
//print ("the bottom right corner is \(theMatrix[theMatrix.count-1] [2])")
//print ("the bottom right corner is \(theMatrix[theMatrix.count-1][theMatrix.count-1])")

//print out all the elements of the multidimensional array
//for innerArray in theMatrix {
//    for number in innerArray {
// print ("number is \(number)")
//}
//}

//to print out the middle element
//let middleIndex = (theMatrix.count - 1) / 2
//print ("the middle element is \(theMatrix[middleIndex][middleIndex])")

// tuples and arrays example ??
// tuples can be mismatched data types
//let ashli = (name: "Ashli", cohort: 5.3)
//let josh = (name: "Josh", cohort: 5.3)
//let melissa = (name: "Melissa", cohort: 4.3)
//
//let fellows = [ashli, josh, melissa]
//
//for fellow in fellows {
//    if fellow.cohort == 4.3 {
//        print ("\(fellow.name), 🎓congratulations on completing the program")
//    } else {
//        print ("\(fellow.name) stick with it, 10 months will fly by. Persistences is KEY!!")
//    }
//}
