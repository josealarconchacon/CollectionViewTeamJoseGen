//
//  main.swift
//  CalcReview
//
//  Created by Genesis Mosquera on 11/1/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation
//
//func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
//    switch opString {
//    case "+":
//        return {x, y in x + y }
//    case "-":
//        return {x, y in x - y }
//    case "*":
//        return {x, y in x * y }
//    case "/":
//        return {x, y in x / y }
//    default:
//        return {x, y in x + y }
//    }
//}
//var properInput = true
//repeat {
//
//    //while properInput == false {
//    //    print("Enter operation")
//    print ("What would you want to do: (Calc) (RandomOp) (HighOrder)")
//
//    if let response = readLine() {
//
//
//        switch response.lowercased() {
//        case "calc":
//            print("Enter your function, e.g 2 + 4")
//
//            var userInputArray = [String]()
//            var firstNumber = 0.0
//            var secondNumber = 0.0
//            var randomOp = ""
//            var newRandom: String = ""
//            if let userInput = readLine() {
//                let components = userInput.components(separatedBy: " ")
//                print(components) // code out
//                userInputArray = components
//            }
//
//            if let firstNumberInput = Double(userInputArray[0]) {
//                firstNumber = firstNumberInput
//            } else {
//                continue
//            }
//
//            if let secondNumberInput = Double(userInputArray[2]) {
//                secondNumber = secondNumberInput
//            } else {
//                continue
//            }
//
//            let mathOperation = mathStuffFactory(opString: userInputArray[1])
//            let result = mathOperation(firstNumber, secondNumber)
//            print(" \(userInputArray[0]) \(userInputArray[1]) \(userInputArray[2]) = \(result)")
//            print("Would you like to play again? Yes or No")
//            let answer = readLine()?.lowercased()
//            if answer ==  "yes" {
//                continue
//            } else {
//                if answer == "no" {
//                    break
//                }
//            }
//        case "randomop":
//            print("Enter your function")
//
//            var userInputArray = [String]()
//            var firstNumber = 0.0
//            var secondNumber = 0.0
//            var randomOp = ""
//            var randomOperand = ["*","/","+","-"]
//            if let userInput = readLine() {
//                let components = userInput.components(separatedBy: " ")
//                print(components) // eventually code out
//                userInputArray = components
//            }
//
//            if let firstNumberInput = Double(userInputArray[0]) {
//                firstNumber = firstNumberInput
//            } else {
//                continue
//            }
//
//            if let secondNumberInput = Double(userInputArray[2]) {
//                secondNumber = secondNumberInput
//            } else {
//                continue
//            }
//
//            if userInputArray.contains("?") {
//                if let newRandom = randomOperand.randomElement(){
//                    //randomOp.append(newRandom) // delete later
//
//
//                    let mathOperation = mathStuffFactory(opString: newRandom)
//                    let result = mathOperation(firstNumber, secondNumber)
//                    print(newRandom)
//                    print(result)
//                    properInput = true // temp
//
//                }
//            }
//

            //        case "highorder":
            //
            //            var newString = "filter 1,5,2,7,3,4 by < 4"
            //            let stringComponents = newString.components(separatedBy: " ")
            //            print(stringComponents)
            //            //1,2,3
            //            var numberIndexStr = stringComponents[1]
            //            var compOfFirstIndex = numberIndexStr.components(separatedBy: ",")
            //            print(compOfFirstIndex) // change to Ints
            //
            //            //            func myFilter(inputArray: [Int], filter: (Int) -> Bool) -> [Int] {
            //        } return Int
            //
            //
        //        print("Great! Let's keep going")
        //default:
        //    print("Unrecognizable function")
   //     }
        //    default:
        //    print("anything")
        //}
  //  }while properInput
let letterX = [1,2,3,4]
let userInput = 4
//print("Enter a line of numbers")

func myFilter (arr: [Int], closure: (Int) -> Bool) -> [Int] {
    var emptyArr = [Int]()
    for number in arr {
        if closure(number) {
            emptyArr.append(number)
        }
    }
    return emptyArr
}
print(myFilter(arr: letterX, closure:{$0 < userInput ? true : false}))

let numberSum = letterX.reduce(0, { x, y in
    x + y
})

print(numberSum)

//func mySum (arr:[Int], closure: (Int)(Int) -> Int) {
//    for number in arr {
//
//    }
//}
//print(mySum(arr: letterX, closure: {$0 + $1}))



func myReduce(arr: [Double], orderBy: Double, reduceClosure: (Double, Double) -> Double) -> Double{
    var myReduceOp = orderBy
    for num in arr{
        myReduceOp = reduceClosure(tempResult, num)
    }
    
    return tempResult
}
myReduce(arr: numberArray, orderBy: orderBy, reduceClosure: <#T##(Double, Double) -> Double#>)
