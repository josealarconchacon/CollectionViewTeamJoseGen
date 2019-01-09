//
//  main.swift
//  Recursion
//
//  Created by Genesis Mosquera on 12/11/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

//func recurse(counter: Int) {
//    if counter == 10 { // base case
//        return
//    }
//    print(counter)
//    recurse(counter: counter - 1) // recursive call
//}
//recurse(counter: 20)
//
//// factorial is a number x (number - 1)!
//func factorial(num: Int) -> Int {
//    guard num > 1 else { return 1 } // base case
//    return num * factorial (num: num - 1) //recursive call
//}
//print(factorial(num: 4)) //  24

// fibonacci is a sequence of numbers
// where the current value is a result of
// adding the previous 2 values
// e.g 1, 1, 3, 5, 8, 13, 21....

// fibonacci without using dynamic programming
// dynamic programming is using recursion along with memoization
// memoization - storing calculations and retrieving later when needed, this prevents and adds performance to complex problems, e.g. fibonacci


//func fibonacci(num: Int) -> Int {
//    guard num > 1 else { return 1 } // base case
//    return fibonacci(num: num - 1) + fibonacci(num: num - 2)
//}
//fibonacci(num: 20)
//
//var fibValues = [Int : Int]()
//func fibonacciUsingDynamicProgramming(num: Int) -> Int {
//    // checking if fibonacci calculation exist
//    if let fib = fibValues[num] {
//        return fib
//    }
//
//    guard num > 1 else {
//        fibValues[num] =  num
//        return 1
//    }
//
// if the fibonacci calculation does exist, we need to perform it
// fibonacci formula: (n-1) + (n-2)

//    let fib = fibonacciUsingDynamicProgramming(num: num - 1) + fibonacciUsingDynamicProgramming(num: num - 2)
//    // add calculation to fibValues dictionary
//    fibValues[num] = fib
//    return fib
//}
//fibonacciUsingDynamicProgramming(num: 20)
//
//func nfactorial(num: Int) -> Int {
//    guard  num > 1 else { return 1 }
//    return num * nfactorial(num: num - 1)
//}
//print(nfactorial(num: 5))
//
//func printAllNumbers(arr: [Int]) -> [Int] {
//   var myArr = [Int]()
//    for p in arr {
//        myArr.append(p)
//    }
//    return myArr
//}
//print(printAllNumbers(arr: [2, 4, 5, 7]))

// Problem 2
var num = 0
var myArray = [2, 4, 6, 8]


func printAll(arr: [Int]) -> Int {
    guard num < arr.count - 1 else { return arr[num]}
    print(arr[num])
    num += 1
    return printAll(arr: arr)
}
print(printAll(arr: myArray))


// Problem 3
var num1 = 0
var myArray1 = ["Hi", "there", ",", " ", "user","!"]
//
//func conca (arr: [String]) -> String {
//    var str = ""
//    guard num1 < arr.count - 1 else { return ""}
//  // print(conca(arr: [arr[num1]])
//    str = "\(arr[num1])"
//    num1 += 1
// print(conca(arr: arr))
//    //print(str)
//    return str
//}
//print(conca(arr: myArray1))

func allString(arr: [String]) -> String {
    guard num1 < arr.count - 1 else { return ""}
    return  allString(arr: [arr[num1]]) + allString(arr: arr += 1)
}
