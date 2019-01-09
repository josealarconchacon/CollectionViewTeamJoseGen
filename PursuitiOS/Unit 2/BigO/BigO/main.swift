//
//  main.swift
//  BigO
//
//  Created by Genesis Mosquera on 11/13/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

// constant time example O(1)
func constantTime(arr: [String]) {
    guard arr.count > 0 else { return }
    print(arr[0])
}

//linear time O(n)
func linearTime(arr: [String]) {
    for string in arr {
        print(string)
    }
}

// quadratic time O(n^2)
func quadraticTime(arr: [String]) {
    for stringOne in arr {
        for stringTwo in arr {
            print("Player One: \(stringOne), Player Two: \(stringTwo)")
    }
}
}
