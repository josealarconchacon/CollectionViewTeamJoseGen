//
//  main.swift
//  Closures
//
//  Created by Genesis Mosquera on 10/24/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

// THIS IS A SPECIAL KIND OF CLOSURE (IT IS A GLOBAL NAMED CLOSURE)
//  A FUNCTION IS A TYPE OF CLOSURE - ALL FUNCTIONS ARE CLOSURES BUT NOT ALL CLOSURES ARE FUNCTIONS
// ALL CLOSURES ARE CODE BLOCKS { }
// CLOSURES CONTAIN CODE BLOCKS WITH PARAMETERS AND RETURN STATEMENTS
// CLOSURES ARE FOR HIGHER ORDER FUNCTIONS IE. FILTER, MAP & REDUCE , YOUTUBE HOW TO WRITE A CLOSURE NETWORKING - YOU CAN USE THEM TO PASS THINGS AROUND - TO TRACK COMPLETION OF TASKS
func returnsCapitalizedName(name:String) -> String {
    return name.capitalized
}
print(returnsCapitalizedName(name: "alan"))

let myFirstClosure = { (name: String) -> String in
    return name.capitalized
}

let doYouHavePets = {(pets: Int) -> Bool in
    if pets > 0 {
        return true
    } else {
        return false
    }
}

//func thisDoesSomething(name: String) -> String {
//
//}

let add = {(a: Int, b: Int) -> Int in
    return a+b
}

print(add(3,2))

// subtract

let substract = {(c: Int, d: Int) -> Int in
    return c-d
}
print(substract(5,1))

// multiply

let multiplication = {(e: Int, f: Int) -> Int in
    return e*f
}
print(multiplication(3,4))

//divide

let division = {(g: Int, h: Int) -> Int in
    return g/h
}
print(division(10,5))

//  OPERATION TELLS ME THAT ITS A CLOSURE RETURNING INTS

func combine(a:Int, b:Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a,b)
}

print(combine(a: 2, b: 3, operation: add))
print(combine(a:4, b:7, operation: multiplication))


let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella", "gen"]
func backwards(firstString:String, secondString:String) -> Bool {
    return firstString > secondString
}
//var reversedNames = names.sorted(by: backwards)
//print(reversedNames)
//
//var reversedNames = names.sorted(by: {{ (a:String, b:String) -> Bool in
//    return a > b})
//  print(reversedNames)

//    var reversedNames = names.sorted(by: {a,b in return a > b})
//print(reversedNames)

//var reversedNames = names.sorted(by: {{ (a:String, b:String) -> Bool in
//    return a > b})
//    var reversedNames = names.sorted(by: {a,b in return a > b})
//var reversedNames = names.sorted(by: {a,b in a > b})

//var reversedNames = names.sorted(by: {$0 > $1})
//print(reversedNames)

//Let's practice by making calls to sorted(by:) with closures to accomplish different orders. In defining the closure think both about the strategy required (to return whether the first argument is less than the second), and reflect on how this extracted bit of functionality is enough to influence the behavior of the sorted(by:) function.

//Given

let numbers = [32, 21, 33, 2, 66, 88, 43, 902, 73, 27, 905]
let words = ["One", "two", "Buckle", "my", "shoe"]
//Sort numbers ascending.

var sortedNumbers = numbers.sorted(by: {$0 < $1})
print(sortedNumbers)
//Sort words, descending case-insensitive.

var desWords = words.sorted(by: {$0 > $1})
print(desWords)

//Sort words by the length of each element.

var lengthEl = words.sorted (by: {$0.count < $1.count})
print(lengthEl)

//Sort numbers ascending, even numbers first, odd numbers second. Output will be [2, 32, 66, 88, 902, 21, 27, 33, 43, 73, 905].
//var newSort = numbers.sorted (by: { }
//map

let myNumbers = [2,3,46,7,8]
let addedArray = myNumbers.map { (currentElement) -> Int in
    return currentElement + 2
}

let shorterWay = myNumbers.map{$0 + 2}
let myStrings = myNumbers.map{String($0)}
print(addedArray)
print(shorterWay)
print(myStrings)

let num = 2
let myMatrix = [[3,4,5],
                [4,6,5],
                [2,1,4]
]
let newMatrix = myMatrix.map { (currentArray) -> [Int] in
    return currentArray + [9]
}
print(newMatrix)

let namesTwo = ["alyson", "alex"]

print(namesTwo.map{$0 + " welcome!"})
print(namesTwo)

// filter lets you use a function to let you filter through it
let myArray = [2,3,4,5,6,7,8,9,10]
let myEvens = myArray.filter { (numberIAmLookingAt) -> Bool in
    return numberIAmLookingAt % 2 == 0
}
let mySortedEvens = myEvens.sorted(by: <)
let fast = myArray.filter() {$0 % 2 == 0}.sorted() {$0 < $1}
print(fast)

let myOdds = myArray.filter { (numberIAmLookingAt) -> Bool in
    return numberIAmLookingAt % 2 != 0
}
let mySortedOdds = myOdds.sorted(by: <)
print(myEvens)

let myStrings1 = ["bat", "cat", "tiger","rawr"]
print(myStrings1.filter{$0.count <= 3})


// initial first and the first element - a value that you start with and then add to it
let myNumbers2 = [1,2,3,4]
print(myNumbers2.reduce(0) { (currentValue, nextValue) -> Int in
return currentValue + nextValue
})

print(myNumbers.reduce(0){$0 + $1})
print(myNumbers.reduce(1, *))

let myStrings2 = ["alan","alex", "alysson"]
print(myStrings.reduce("welcome",  { (current, next) -> String in
return current + next
}))

let myMatrix2 = [[3,4,5],
                [4,6,5],
                [2,1,4]
]
var myNewMatrix2: [[Int]] = []
for array in myMatrix2 {
    myNewMatrix2.append(array.map() {$0 + 2})
}
print(myNewMatrix2)

let myStr = "how are you"
print(myStr.map { (char) -> String in
    return char.description.uppercased()
})
//let myWord = "alan"
//print(myWord.filter(){!"aeiou".contains($0)})

// question 1 - Write a function named applyKTimes that takes an integer K and a closure and calls the closure K times. The closure will not take any parameters and will not have a return value.
//func applyKTimes(_ K: Int, _ closure: () -> ()) {
//    for _ in 1...K {
//        closure()
//    }
//}
//
//let stringClosure = {() -> () in
//    print("I love swift")
//}



// question 2 Use filter to create an array called multiples that contains all the multiples of 3 from numbers and then print it.

//let numbers3 = [1, 2, 3, 4, 6, 8, 9, 3, 12, 11]
//
//let myThrees = numbers3.filter { (numbersMultThrees) -> Bool in
//    return numbersMultThrees % 3 == 0
//
//}
//print(myThrees)

// question 3 Find the largest number from numbers and then print it. Use reduce to solve this exercise.
//let numbers4 = [4, 7, 1, 9, 6, 5, 6, 9]
//let largest4 = numbers4.reduce(numbers4[0]) {
//if $0 > $1 {
//    return $0
//    } else {
//    return $1
//}
//}
//print(largest4)
//let numbers4 = [4, 7, 1, 9, 6, 5, 6, 9]
//let largest4 = numbers4.reduce(0, +) // ADDS ALL OF THESE NUMBERS

//print(largest4)
//question 4
//let strings = ["We", "Heart", "Swift"]
//let allStr = strings.reduce("") {
//    if $0 == "" {
//        return $1
//    } else {
//        return $0 + " " + $1
//    }
//}
//
//print(allStr)

//question 5 a. Use sortedBy to sort cities in alphabetical order. b.Use sortedBy to sort cities alphabetical order of the second character of the city name. c.Use sortedBy to sort cities in order of the length of the city name.
 //part a Use sortedBy to sort cities in alphabetical order.
//let cities = ["Shanghai", "Beijing", "Delhi", "Lagos", "Tianjin", "Karachi", "Karachi", "Tokyo", "Guangzhou", "Mumbai", "Moscow", "São Paulo"]

//var sortCities = cities.sorted(by: {$0 < $1})
//print(sortCities)
// part b print sorted cities in ascending order from the second letter in the word
//var sortCities2ndLetter = cities.sorted(by: {$0[$0.index($0.startIndex, offsetBy: 1)] < $1[$1.index($1.startIndex, offsetBy: 1)]})
//print(sortCities2ndLetter)

//// part c.Use sortedBy to sort cities in order of the length of the city name.
//var sortCitiesLength = cities.sorted(by: {$0.count < $1.count})
//print(sortCitiesLength)

// question 6
//let citiesWithPopulation:[(String, Int)] = [("Shanghai",24256800),("Beijing",21516000),("Delhi",16787941),("Lagos",16060303),("Tianjin",15200000),("Karachi",14910352),("Karachi",14160467),("Tokyo",13513734),("Guangzhou",13080500),("Mumbai",12442373),("Moscow",12380664),("São Paulo",12038175)]
//a. Use sortedBy to sort citiesWithPopulation in ascending order of population.
//let newCities = citiesWithPopulation.sorted(by: {$0.1 < $1.1})
//print(newCities)



//var myCitiesDictionary: [String:Int]
//myCitiesDictionary = [
//    "Shanghai": 24256800,
//    "Beijing": 21516000,
//    "Delhi": 16787941,
//    "Lagos":16060303,
//    "Tianjin": 15200000,
//    "Karachi": 14910352,
//    "Karachi2": 14160467,
//    "Tokyo": 13513734,
//    "Guangzhou": 13080500,
//    "Mumbai": 12442373,
//    "Moscow": 12380664,
//    "São Paulo": 12038175
//]
//for value in myCitiesDictionary.values {
//    print(value)
//}
//
//b. Use sortedBy to sort citiesWithPopulation in reverse alphabetical order of the last character in the city name.
//let newCities = citiesWithPopulation.sorted(by: {$0.0.last! > $1.0.last!})
//print(newCities)

//question 8 Find the sum of the squares of all the odd numbers from numbers and then print it.

var allNumbers = [1, 2, 3, 4, 5, 6]
//a. Write code that removes all the odd numbers from the array.
//
//let onlyEvens = allNumbers.filter { (evenNumbers) -> Bool in
//    return evenNumbers % 2 == 0
//
//}
//print(onlyEvens)
//b. Write code that squares all the numbers in the array.
//func squaredNumbers (allNumbArray: [Int]) -> [Int]{
//    var emptyArray = [Int]()
//    for i in allNumbArray {
//    emptyArray.append(i*i)
//    }
//return emptyArray
//}
//print(squaredNumbers(allNumbArray: allNumbers))

//c.
//let sumNumbers = allNumbers.reduce(0, +)
//print(sumNumbers)

//d. Now use map, filter and reduce to solve this problem.



// question 10 Create a closure that takes one Int and returns the doubled value. Check by passing the closure's return to a variable.

//
//

