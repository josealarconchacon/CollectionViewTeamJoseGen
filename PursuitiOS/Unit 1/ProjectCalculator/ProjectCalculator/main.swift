//
//  main.swift
//  ProjectCalculator
//
//  Created by Genesis Mosquera on 10/29/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
    switch opString {
    case "+":
        return {x, y in x + y }
    case "-":
        return {x, y in x - y }
    case "*":
        return {x, y in x * y }
    case "/":
        return {x, y in x / y }
    default:
        return {x, y in x + y }
    }
}
// "*" is coming from the user's input from readLine()
// e.g. user enters 5 * 6
// we need to sepatate string into components
// e.g. [5, *, 6]

let userInput = "5 * 6"
let components = userInput.components(separatedBy: " ")
print(components)

let mathOperation = mathStuffFactory(opString: "*")

// calculate result using closure returned from mathStuffFactory()
// mathOperation is a closure
let result = mathOperation(5, 6)
//print(result)
// print result to be output as a string
print("\(userInput) = \(result)")
