//
//  main.swift
//  Sets
//
//  Created by Genesis Mosquera on 10/22/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

// review arrays
let cities = ["new york", "boston", "paris","stockholm"]
print("second city is \(cities[1])")

// review dictionaries - key, value
var races = [String: String]()
races ["Sweden"] = "Stockholm Marathon"
races["France"] = "Paris Marathon"
print("there are \(races.count) races")

// use optional binding to search for a race
let canada = races["Canada"]
// to safely unwrap
if let canada = races["Canada"] {
    print("found a race in Canada")
} else {
    print("no race found, aye")
}
// Sets - is guaranteed to have unique elements and unsorted.

//declaring an empty Set
var accountNumbers: Set<Int> = []
accountNumbers.insert(123456)
accountNumbers.insert(123456)
accountNumbers.insert(273849)
print("there are \(accountNumbers.count) in accountNumbers")


// a set way to count if we have duplicates
let accountArray = [123456, 123456]
let accountSet = Set(accountArray)
print("there are \(accountSet.count) accounts in accountSet")

//acesing an element in a set using ternary operator
accountSet.contains(453949) ? print("does contain") : print("not in set")

//adding and removing from a Set
var fellows: Set<String> = ["Ashli", "Ian", "Stephanie", "Josh", "Kat", "Ian"]
print("fellows set is \(fellows)")

//This will print out in a random order
fellows.remove("Ashli")
print(fellows)

fellows.insert("Antonio") // [""]
print(fellows)
// remove returns the item removed so then you can print the item that was removed

// Sorting  a Set to a guarantee element structure - Sorts from A-Z


// Number 5

let evenNumbers: Set<Int> = [2,4,6,8,10]
let numbersFrom1to10: Set<Int> = [1,2,3,4,5,6,7,8,9,10]
let allNumbers = evenNumbers.union(numbersFrom1to10)
print(allNumbers.sorted())

let intersectingNumbers = evenNumbers.intersection(numbersFrom1to10)

let staff: Set<String> = ["Alex","Dave","Elle","Alan"]
let teacherAssistants: Set<String> = ["Kaniz","Maggie","Jermaine"]
let teachersAssistantStaffDisjoint = teacherAssistants.isDisjoint(with: staff)

//fundamental Set Operations
let set1: Set<Int> = [1,2,3,4,5,6]
let set2: Set<Int> = [4,2,10,11,33]
let iOSFellows: Set<String> = ["Nathalie", "Alyson","Ibraheem","Ian", "Jian", "Bob"]
let pursuitStaff: Set<String> = ["Ian", "Alex", "Elle", "Bob"]
//find intersection of set1 and set2
let intersection = set1.intersection(set2) // [2,4]
print("intersection is \(intersection)")

//find intersection of iOSFellows and pursuitStaff
let personIntersection = iOSFellows.intersection(pursuitStaff) // ["Ian", "Bob"]
print("person intersection is \(personIntersection)")

//find symmetric difference between set1 and set2 - elements NOT shared between sets
let symmetricDifference = set1.symmetricDifference(set2)
print("symmetricDifference count is \(symmetricDifference.count)")
print("symmetric difference is \(symmetricDifference.sorted())")

//find union of people
let unionOfPeople = iOSFellows.union(pursuitStaff) // all elements of both sets without duplicates

print("unionOfPeople is \(unionOfPeople)")

// subtract pursuitStaff from iOSFellows
let subtractingPeople = iOSFellows.subtracting(pursuitStaff)
print("subtractingPeople is \(subtractingPeople), can staff join?")



