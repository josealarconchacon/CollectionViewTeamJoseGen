//
//  main.swift
//  Functions
//
//  Created by Genesis Mosquera on 10/22/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

//define a function called greeting
// the greeting function takes a parameter of type String
// prints out "Hello" and the person's name

func greeting(name: String) {// 1 parameter
    print("Hello \(name)")
}

//call the greeting() function
greeting(name: "Jevon")
greeting(name: "Olimpia")

// function with 2 parameters
// define a function that takes 2 values. adds their values together and returns the result as an Int
func addTwoNumbers(num1:Int, num2:Int) -> Int{
    let addition = num1 + num2
    return addition
}

//call the addTwoNumbers function
let result = addTwoNumbers(num1: 5, num2: 4)
print("result of addition is \(result)")

// define a function that takes a fellows name and cohort
//print results
func printFellowInfo(name:String, cohort: Double) {
print("Hi \(name), how is \(cohort) so far?")
}

//call the printFellowInfo() function
printFellowInfo(name: "Alyson", cohort: 5.3)
printFellowInfo(name: "Nicole", cohort: 4.3)

//passing an array
// define a function that takes an array and returns an array of even numbers
func evenNumbers(numbers:[Int]) -> [Int]{
    //make a mod
 var evenArray = [Int]()
    for num in numbers where num % 2 == 0 {
        evenArray.append(num)
    }
return evenArray
}
let myNumbers = [1, 2, 3, 4, 5, 10, 100, 88, 5, 7]

//invoke or call the evenNumbers() function
let results = evenNumbers(numbers: myNumbers)
print("even numbers array is \(results)")

//optional return type
// write a function to convert a String to Int and double the value and retun
func convertToIntAndSquareValue(inputString: String) -> Int? {
    var value: Int?
    if let valueIsInt = Int(inputString) {
        value = valueIsInt * valueIsInt
    }
    return value
}

var myNum = "10"
if let squareValue = convertToIntAndSquareValue(inputString: myNum) {
    print("squaring \(myNum) is \(squareValue)")
} else {
    print("Not a valid integer")
}

// default values
// define a function that ask the user whether the bevarage choice is coffee or tea?
func coffeeOrTea(coffee: Bool, sugar: Int = 2) {
    coffee ? print("your coffee has \(sugar) sugars") : print("tea has \(sugar) sugar(s)")
}

//make use of function /invoke/ call ...
coffeeOrTea(coffee: false) //using the default value of sugar which is 2
coffeeOrTea(coffee: true, sugar: 0) //overriding default value of sugar

// FUNCTIONS LAB 1
// Q 1
//let itemCost = 45.0
//let nyTax = 0.08775
//
//func totalWithTax(num1:Double, num2:Double ) -> Double {
//    let totalTax = num1 * num2
//     let newTotal = num1 + totalTax
//   return newTotal
//}
//let newPrice = totalWithTax(num1: 45.0, num2: 0.08775)
//print(newPrice)
// Q2 - Convert the the following if/else statement below into function with a String return type.

//let todaysTemperature = 72
//
//if todaysTemperature <= 40 {
//    print("It's cold out.")
//} else if todaysTemperature >= 85 {
//    print("It's really warm.")
//} else {
//    print("Weather is moderate.")
//}
//func newStrRtrn(num1: Int, num2: Int) -> Int? = {
//    coffee ? print("your coffee has \(sugar) sugars") : print("tea has \(sugar) sugar(s)")
//}

//question 5 Write a function that takes in any two positive integers and return the sum.
//
//func twoPositiveInts(num1: Int, num2: Int) -> Int {
//    let newSum = num1 + num2
//    return newSum
//}
//let totalSum = twoPositiveInts(num1: 2, num2: 4)
//print(totalSum)

//question 7 Make a calculator function that takes in three parameters (two numbers and one operator) and returns the answer of the operation. Operater parameter: (+, -, x, /)

func threeParameters(num1: Int, num2:Int, Operands:opera )
