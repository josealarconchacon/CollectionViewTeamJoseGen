//
//  main.swift
//  SetsLab
//
//  Created by Genesis Mosquera on 10/22/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

//Q; 1 Ms. Gabriel Williams is a botany professor at District College. One day, she asked her student Mickey to compute the average of all the plants with distinct heights in her greenhouse. Input: heights of trees below: 161 182 161 154 176 170 167 171 170 174 Output:169.375

//var heightsOfPlants: Set<Double> = [161, 182, 161, 154, 176, 170, 167, 171, 170, 174]
//let sumOfHeights = heightsOfPlants.reduce(0,+)
//print(sumOfHeights/Double(heightsOfPlants.count))
//
// Q; 2. Determine if a String is a pangram. A pangram is a string that contains every letter of the alphabet at least once. e.g "The quick brown fox jumps over the lazy dog" is a pangram e.g "The quick brown fox jumped over the lazy dog" is NOT a pangram
//
//let alphabet: Set<String> = ["abcdefghijklmnopqrstuvwxyz"]
//let sentence: Set<String> = ["The quick brown fox jumps over the lazy dog"]
//if sentence.contains(alphabet){
//    print("it is a pangram")
//} else {
//    print("not a pangram")
//}

// Q 4
//let arr1: Set<Int> = [2, 4, 5, 6, 8, 10, 12]
//let arr2: Set<Int> = [1, 2, 3, 4, 5, 6]
//let arr3: Set<Int> = [5, 6, 7, 8, 9, 10, 11, 12]
//let arr4: Set<Int> = [1, 3, 4, 5, 6, 7, 9]
////let newArr = arr1 + arr2 + arr3 + arr4
//let newArr = arr1.union(arr2)
//let newArr2 = arr3.union(arr4)
//let allArr = newArr.union(newArr2)
//print(allArr)
//let arrSet = Set(allArr)
//print(arrSet)
//print(arrSet.sorted())

// Q5
// Part 1 - Intersection
//let list1: Set<Int> = [1, 3, 4, 6, 2, 7, 9]
//let list2: Set<Int> = [3, 7, 13, 10, 4]
//let list3 = list1.intersection(list2)
//print(list3)
////Part 2 - Symmetric Difference
//let symmentricDiff = list1.symmetricDifference(list2)
//print(symmentricDiff)
////union
//let list4 = list1.union(list2)
//print(list4)
////subtracting
//let subList = list2.subtracting(list1)
//print(subList)

//Q6
//var spaceships = Set<String>()
//spaceships.insert("Serenity")
//spaceships.insert("Enterprise")
//spaceships.insert("TARDIS")
//spaceships.insert("Serenity")
//print(spaceships.count)
