//
//  main.swift
//  OptionalsLab
//
//  Created by Genesis Mosquera on 10/15/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

// QUESTION 1
//var userName: String?

//if userName != nil {
//    print (userName)
//} else {
//    print ("No name!")
//}

//if let name = userName {
//    print (name)
//} else {
//    print ("No name")
//}
// QUESTION 2
//var backgroundColor: String?
//
//if let color = backgroundColor {
//    print (color)
//} else {
//    print ("No color")
//}

// QUESTION 3 (unresolved for area)

//var width: Double?
//var height: Double?
//
//if width != nil {
//    if height != nil {
//        print ("The area is \(width * height)")
//    } else {
//        print ("Error Message")
//}
//}
// QUESTION 4
//var name: String? = "Esteban"
//var age: Int? = 85
//var height: Double?  = 5.7
//
//if let myName = name {
//    if let myAge = age {
//        if let myHeight = height {
//            print ("My name is \(myName), and I am \(myAge) years old, and I am \(myHeight) in")
//        } else {
//    }
//}
//}
//print("error message")

// QUESTION 5 Given the variable firstName, middleName and lastName. Create a variable called fullName that is a nicely formatted string.
//
//var firstName: String = "Johnny"
//var middleName: String? = "Milton"
//var lastName: String = "Stone"
//
//
//if let safeMiddleName = middleName {
//    let full = "\(firstName) \(safeMiddleName) \(lastName)"
//    print("My full name is \(full)")
//} else {
//    print("My full name is \(firstName) \(lastName)")
//}

// QUESTION 6 Write code that adds 15 to myIntString, then prints the sum. Use the Int() constructor which returns an optional Int (Int?).
//let myIntString = "35"
//
//if let myNewInt = Int(myIntString) {
//    print (myNewInt + 15)
//}

 //QUESTION 7
//var scores: (Int?, Int?, Int?)?
//
//var testCaseOne: (Int?, Int?, Int?)? = (4, nil, 7)
//var testCaseTwo: (Int?, Int?, Int?)? = (nil, nil, 9)
//var testCaseThree: (Int?, Int?, Int?)? = (5, 10, 24)
//   var sum = 0
//
//if let safeTuple = testCaseOne {
//    if let firstProperty = safeTuple.0 {
//        sum += firstProperty
//
//    }
//    if let secondProperty = safeTuple.1 {
//        sum += secondProperty
//    }
//    if let thirdProperty = safeTuple.2 {
//        sum += thirdProperty
//}
//}
//print (sum)

// QUESTION 8 Safely unwrap “tuple” if there’s a non-nil tuple value and print it out

//var tuple: (Int, Int)?
//if Bool.random() {
//    tuple = (5, 3)
//}
//
//if let safeTuple = tuple {
//    print(safeTuple)
//} else {
//    print("No value")
//}


// QUESTION 9 Write code that either doubles myInt and then prints it, or prints an error message if myInt is nil

//var myInt: Int?
//if Bool.random() {
//    myInt = 5
//}
//if let newInt = myInt {
//    print (newInt * 2)
//} else {
//    print ("Error message")
//}

// QUESTION 10 Write code that prints out the product of myDouble and doubleTwo or prints an error message if myDouble is nil

//var myDouble: Double?
//let doubleTwo: Double = 5
//if Bool.random() {
//    myDouble = 12
//}
//
//if let myNewDouble = myDouble {
//    print ( myNewDouble * doubleTwo)
//} else {
//    print ("Error Message")
//}

//QUESTION 11 Determine if the variable contains a Boolean or nil value. If nil set the variable to false else keep it true
//
//var isTheGreatest: Bool?
//if Bool.random() {
//    isTheGreatest = true
//}
//
//if let safeGreatest = isTheGreatest {
//    safeGreatest == true
//    print ("true")
//    } else {
//       isTheGreatest == nil
//    isTheGreatest = false
//    print ("error")
//    }

// QUESTION 16 Given the array poorlyFormattedCityNames, create a new array with the city names capitalized and any nil values removed.

let poorlyFormattedCityNames: [String?] = ["new york", "BOSTON", nil, "chicago", nil, "los angeles", nil, "Dallas",]

Output: ["New York", "Boston", "Chicago", "Los Angeles", "Dallas"]
 firstly, unwrap the outermost wrap
 you are not allowed to unwrap a nil, cannot unwrap something that does not have a declared value
var arrayExample: [Int?]? = [2,3,nil,4,nil]
print (arrayExample![2]!)

//if let safeArray = arrayExample {
//    for number in safeArray {
//        guard let safeNumber = number else {continue}
//        print (safeNumber)
//    }
//}
if var safePoorly = poorlyFormattedCityNames {
    for cities in safePoorly {
        guard let safePoorly = name else {continue}
        print (safePoorly)
    }
}
