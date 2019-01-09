//
//  main.swift
//  TwitterDay
//
//  Created by Genesis Mosquera on 11/9/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

//Diagonal Sum
// find the sum of the diagonal set
// input
// 1, 2, 9
// 8, 2, 3
// 4, 5, 6
// output 24
// array of arrays of Int Array <Array <Int>>
// assume always 3 X 3
// both diagonals added together

struct DiagonalSummer{
    func sum(matrix: Array<Array<Int>>) -> Int {
        var accumulator: Int = 0
        // first array, 0th & 2nd element
        let firstArray = matrix[0]
        accumulator += firstArray[0]
        accumulator += firstArray[2]
        // second array, 1st element// twice bc diagonals
        let secondArray = matrix[1]
        accumulator += secondArray [1]
        accumulator += secondArray[1]
        // last array, 0th & 2nd element)
        let lastArray = matrix[2]
        accumulator += lastArray[0]
        accumulator += lastArray[2]
        return accumulator
    }
}


// sum of a
sum(matrix: Array<Array<Int>>) -> Int {
    var a: Int = 0
    let firstArray = matrix[0]
    var size: Int = firstArray.length
    var b = size
    // for each row, add 1 to a, subtract 1 from b until they are equal
    var accumulator: Int = 0
    for(int i = 0; 1< size 
}
