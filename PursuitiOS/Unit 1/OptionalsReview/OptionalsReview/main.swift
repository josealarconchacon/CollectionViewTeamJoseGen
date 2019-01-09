//
//  main.swift
//  OptionalsReview
//
//  Created by Genesis Mosquera on 10/16/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

//print ("Please enter your age: ")

// using optional binding to unwrap String? value

//if let userResponse = readLine () {
//    if let userAge = Int (userResponse) {
//        if userAge >= 21 {
//            print ("Drink up!")
//        } else {
//            print ("you are underage")
//        }
//    } else {
//        print ("not a valid age")
//    }
//} else {
//    print ("userResponse is nil")
//}

//let response = readLine()!
//let age = Int(response)!
//if age > 5 {
//    print ("stop drinking milk")
//}

//var myNum = 8
//for number in 4..<8{
//    if number == 7 {
//        break
//    } else {
//        myNum += number
//    }
//}
//print(myNum)

//var sum = 0 // number of runs
//
//for _ in 1...10{
//    for _ in 1...10 {
//        sum += 1
//    }
//}
//print (sum)
//

//
//for i in 1...10{
//    for _ in 1...10 {
//        print (i)
//}
//}

//let theMatrix = [[1, 2, 3],
//                 [4, 5, 6],
//                 [7, 8, 9]]
//for ok in 0...2 {    // iterators - use a for loop
//    for i in 0...2 {
//        print (theMatrix [ok][i])
//    }
//}

var inputArray = [1, 4, -2, -9, 2, -2, 1, 10, 4]
var outputArray = Array ([])
for i in 0...inputArray.count - 1 {
    for j in 0...inputArray.count - 1 {
        if i != j {
            if inputArray [i] == inputArray [j] && outputArray.contains(where: inputArray [j]) {
    
        outputArray.append(inputArray [i])
                print (outputArray)
}
}
}
}
