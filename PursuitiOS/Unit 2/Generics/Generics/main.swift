//
//  main.swift
//  Generics
//
//  Created by Genesis Mosquera on 11/13/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

// define a function that takes two ints and swaps them

func swapTwoInts(int1: inout Int, int2: inout Int) {
    let temp = int1
    int1 = int2
    int2 = temp
}
var num1 = 5
var num2 = 17
print("num1: \(num1), num2: \(num2)")
swapTwoInts(int1: &num1, int2: &num2)
print("num1: \(num1), num2: \(num2)")


// define a function that takes two Strings and swaps them

//func swapTwoStrings(str1: inout String, str2: inout String)  {
//    let fellowName = str1
//    str1 = str2
//    str2 = fellowName
//}
//var str1 = "Jermaine"
//var str2 = "Maggie"
//print("str1: \(str1), str2: \(str2)")
//swapTwoStrings(str1: &str1, str2: &str2)
//print("str1: \(str1), str2: \(str2)")

// generic function
func swapTwoValues<Element>(value1: inout Element, value2: inout Element) {
    let temp = value1
    value1 = value2
    value2 = temp
}

var str1 = "Swift"
var str2 = "Objective-C"
print("str1: \(str1) , str2: \(str2)")
swapTwoValues(value1: &str1, value2: &str2)
print("after swap: str1: \(str1) , str2: \(str2)")
