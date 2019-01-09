//
//  main.swift
//  closures-review
//
//  Created by Genesis Mosquera on 10/26/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

let numbers = [99, 1, 2, 3, 4, 5, 6, 7, 8, 9, 3, 12, 11]

//use map to return an array of squares of the elements
print(numbers.map{$0 * $0})
// use filter to return an array of elements that's divisible by 3
print(numbers.filter{$0 % 3 == 0})

// use reduce to retun the largest element in the array
print(numbers.reduce(Int.min){$0 > $1 ? $0 : $1})

// sort numbers descending
print(numbers.sorted{$0 > $1})

//given an array of Strings return an array of valid integers
let stringsArray = ["10", "bob", "3", "ashli"]

print(stringsArray.compactMap({Int($0)}))

// using sorted()- function
print(numbers.sorted()) // ascending

//using sorted(by: ) - takes a closure argument
print(numbers.sorted { $0 > $1 } )

// function takes two Ints and a closure, closure takes two Ints
//returns an Int, function returns an Int
func calculate (num1: Int, num2: Int, closure:(Int, Int) -> Int) -> Int {
    
}


// create a function that takes in two arrays of Ints and a closure that takes in two Ints and returns an Int. The function returns an Int



// [4, 6, 8, 10]
func combinesArray(array1:[Int], array2:[Int], operation: (Int, Int) -> Int) -> [Int] {
    var newArray = [Int]()
    for index in 0..<array1.count {
        let firstNumber = array1[index] // array1[0]
        let secondNumber = array2[index]
        let combinedNumber = operation(firstNumber, secondNumber)
        newArray.append(combinedNumber)
    }
    return newArray
    
}

let firstArray = [3,4,5,6]
let secondArray = [1,2,3,4]
// closures always end in "in"
let myAddingClosure = {(firstNumber:Int, secondNumber:Int) -> Int in
    return firstNumber + secondNumber
}

// in this line, you assign what the function does

//print(combinesArray(array1: firstArray, array2: secondArray, operation: myAddingClosure))
print(combinesArray(array1: firstArray, array2: secondArray, operation: {$0 + $1}))
