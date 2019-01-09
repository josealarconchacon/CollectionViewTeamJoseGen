//
//  main.swift
//  Unit3FinalReview
//
//  Created by Genesis Mosquera on 12/17/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

// problem 1



//let numbers = [1, 3, 5, 85, 15, 11, 90, 5, 56, 45, 12, 75]
//
//let numbersin5 = numbers.filter { $0 % 10 == 5}
//
//print (numbersin5)

// problem 2

//Find the sum of the squares of all the odd numbers from numbers and then print it.

//var numbers = [1, 2, 3, 4, 5, 6]
//a. Write code that removes all the odd numbers from the array.

//var even = numbers.filter { $0 % 2 == 0}
//print (even)

//b. Write code that squares all the numbers in the array.
//
//var numbersSquared = numbers.map { $0 * $0}
//print(numbersSquared)
//c. Write code that finds the sum of the array.
//
//var sum = numbers.reduce(0, +)
//print(sum)
//d. Now use map, filter and reduce to solve this problem.m
//
//Example
//Input:
//
//var numbers = [1, 2, 3, 4, 5, 6]
//Output:
//
//35 // 1 + 9 + 25 -> 35

//var getOdd = numbers.filter {$0 % 2 != 0}
//print (getOdd)
//
//var getSquares = getOdd.map { $0 * $0 }
//print(getSquares)
//
//var getSum = getSquares.reduce(0, +)
//print(getSum)
//problem 3
//Create a closure that takes two strings as input and returns the longest character
//count of the two strings.
// ask Jason
//func longest (strOne: String, strTwo: String) -> Bool {
//    strOne.count > strTwo.count
//    return true
//}
//print(longest(strOne: "genesis" , strTwo: "mosquera"))


// problem 4
// Write a function that takes in an [Int?] and a closure as parameters and returns an [Int]. The closure
//should take in an Int? and return a Bool.
//
//This function should run all the Int?s through the closure, which determines if the value is unwrappable.
//Then unwrap all elements that aren't nil in your main function to return in an Array.
//
//Input:

//let optionalIntArray = [1, 2, nil, 4, 5, nil, 7, 8]
//Output:
//
//[1, 2, 4, 5, 7, 8]


// 5. Consider this bit of code that uses the Giant class:

//class Giant {
//    var name: String
//    var weight: Double
//    let homePlanet: String
//
//    init(name: String, weight: Double, homePlanet: String) {
//        self.name = name
//        self.weight = weight
//        self.homePlanet = homePlanet
//    }
//}
//
//let edgar = Giant(name: "Edgar", weight: 520.0, homePlanet: "Earth")
//let jason = edgar
//jason.name = "Jason"
//// What will the value of edgar.name be after those three lines of code are run? What will the value
////of jason.name be? Why?
//print(edgar.name) // Jason

// problem 6
// Given this bit of code that uses the Alien struct:

//struct Alien {
//    var name: String
//    var height: Double
//    var homePlanet: String
//}
//let bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")
//
//var charles = Alien(name: "Charles", height: 2.25, homePlanet: "Pluto")
//var charlesFromJupiter = charles
//charlesFromJupiter.homePlanet = "Jupiter"
//
////What will the value of charles.homePlanet be after the above code run? pluto
////What about the value of charlesFromJupiter.homePlanet? Why? jupiter
//print(charles.homePlanet)
//print(charlesFromJupiter.homePlanet)
//7. //a. Create a class called Book that has properties for title, author and rating, of type String,
//String, Double respectively. Dont forget the initializer. Create some instances of Book.

//class Book {
//    var title: String
//    var author: String
//    var rating: Double
//    var isGood: Bool
//
//    init(title: String, author: String, rating: Double, isGood: Bool) {
//    self.title = title
//    self.author = author
//    self.rating = rating
//        self.isGood = isGood
//}
//}
//func wasBookGood (rating: Double) -> Bool {
//    if rating => 7 {
//    return true
//    }
//}
////
//let notebook = Book(title: "The Notebook", author: "Nicholas Sparks", rating: 5.0, isGood: Bool )
//print(notebook.title)
//b. Add a method to Book called isGood that returns true if its rating is greater than or equal to 7 // ask for help

// Problem 8: Create a struct called RGBColor that has 3 properties, red, green, blue that are all of type Double.

// Given the below array of color dictionaries, create an array of RGBColor

//let colorDictArray: [[String: Double]] = [["red": 1.0, "green": 0.0, "blue": 0.0],
//                                          ["red": 0.0, "green": 1.0, "blue": 0.0],
//                                          ["red": 0.0, "green": 0.0, "blue": 1.0],
//                                          ["red": 0.6, "green": 0.9, "blue": 0.0],
//                                          ["red": 0.2, "green": 0.2, "blue": 0.5],
//                                          ["red": 0.5, "green": 0.1, "blue": 0.9],]
//let arrRBG = [String]
//

// problem 9
//enum Direction {
//    case up
//    case down
//    case left
//    case right
//}
//
//var location = (x: 0, y: 0)
//
//var steps: [Direction] = [.up, .up, .left, .down, .left]
//
// each step is an instance of that enum
// in order to get the number of cases we would have to anotate enum as CaseIterable
//for step in steps {
//switch step {
//case .up:
//    location.y += 1
//case .down:
//    location.y -= 1
//case .left:
//    location.x -= 1
//case .right:
//    location.x += 1
//}
//}
//    print(location)
// (print("there are \(Direction.allCases.count) cases in Directions enum") 
//response (-2, 1)
//A step .up will increase the y coordinate by 1.
//A step .down will decrease the y coordinate by 1.
//A step .right will increase the x coordinate by 1.
//A step .left will decrease the x coordinate by 1.
//Print the final location of the character after all the steps have been taken.

// problem 10
//a. Create an enum called MetroLine with cases for the colors of the metro train lines.
//
//enum MetroLine {
//    case blue (Character)
//    case red (Int)
//    case orange (Character)
//    case green (Character)
//    case yellow (Character)
//    case gray (Character)
//}

//Create an instance of MetroLine
//var blueLine = MetroLine.blue("A")
//var redLine = MetroLine.red(1)
//var orangeLine = MetroLine.orange("B")
//
//print(orangeLine)

//b. Modify your enum so that each case has an associated value of either Character or Int
//that will represent the train on that line. Create a new instance of MetroLine and give it an appropriate
//train letter or number.
//c. Write code that prints the train letter or number of your instance of MetroLine

// FREQUENCY DICTIONARY
// the key equals the element that you are going through
// the value equals the counter
//var myArray = [2,4, 5, 6,7,-2, 5, 3]
//
//var myDictionary = [Int: Int] ()
//
//for i in myArray {
//    if myDictionary[i] == nil {
//        myDictionary[i] = 1
//    } else {
//        myDictionary[i]! += 1
//    }
//    }
//
//
//11. What is the output of the print statment?
//
//func coffeeOrTea(coffee: Bool, sugarAmount: Int = 2) {
//    let choice = coffee ? "coffee" : "tea"
//    print("here is your \(choice) with \(sugarAmount) sugars")
//}
//print(coffeeOrTea(coffee: true, sugarAmount: 3))
// response equals coffee & 3 sugars

//12. What output will be produced by the code below?
//
//var spaceships1 = Set<String>()
//spaceships1.insert("Serenity")
//spaceships1.insert("Enterprise")
//spaceships1.insert("TARDIS")
//
//let spaceships2 = spaceships1
//
//if spaceships1.isSubset(of: spaceships2) {
//    print("This is a subset")
//} else {
//    print("This is not a subset")
//}
// response is a subset

//  13. Define an enum called CoinType which describes different coin values (penny, nickle, dime and quarter) with their respective raw values.
//You are given a moneyArray which has tuples(ammount, coinType), amount is the amount of coins and coinType represent the enum case.
//Print the total value of the coins in the array.
//


//output: 385
enum CoinType {
    case penny
    case nickel
    case dime
    case quarter
}

let moneyArray:[(Int,CoinType)] = [(10,.penny),
                                   (15,.nickel),
                                   (3,.quarter),
                                   (20,.penny),
                                   (3,.dime),
                                   (7,.quarter)]

var totalValue = (amount:0, value: CoinType.self)

for (value, coins) in moneyArray {
    
    switch coins {
    case .penny:
        totalValue.amount += (value * 1)
    case .nickel:
        totalValue.amount += (value * 5)
    case .dime:
        totalValue.amount += (value * 10)
    case .quarter:
        totalValue.amount += (value * 25)
        
    }
}
print(totalValue)

//14. Implement a function forEach that takes an array of integers
//and a closure and runs the closure for each element of the array.
//Test your function by squaring and printing each element in the test array

func forEach (arrOfInts: [Int], closure:(Int) -> Bool) {
    
}
var ourArray = [2, 3, 4, 5]
print()
