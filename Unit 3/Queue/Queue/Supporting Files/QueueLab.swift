//
//  QueueLab.swift
//  Queue
//
//  Created by Genesis Mosquera on 12/4/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

struct QueueLab {
    //write a function to print our all the elements of the queue
    static func printElementOfQueue<T>(_ queue: Queue<T>) {
        var queue = queue // shadowing a variable (use of identical name)
        while let dequeueValue = queue.dequeue() {
            print(dequeueValue)
        }
    }
// write func to get the smallerst value from a queue
    
    static func smallestElement<T: Comparable> (_ queue: Queue<T>) -> T? {
        var queue = queue
        guard var smallest = queue.peek else { return nil }
        while let dequeueValue = queue.dequeue() {
            if dequeueValue < smallest {
                smallest = dequeueValue
            }
        }
        return smallest
    }
    
   // Find the sum of a queue of Ints
    
    static func sumOfElements (_ queue: Queue<Int>) -> Int? {
        var queue = queue
        var sum = 0
        guard !queue.isEmpty else { return nil }
        while let dequeValue = queue.dequeue() {
            sum += dequeValue
        }
        return sum
    }
    
    
    // Find out whether or not a queue is in sorted order from smallest to biggest
    
//    Sample intput / output
//    (Back) 8 <- 7 <- 3 (Front) // true
//    (Back) 3 <- 7 <- 8 (Front) // false
    
   static func isQueueSortedAscending(_ queue: Queue<Int>) -> Bool {
    var queue = queue
    guard var smallest = queue.peek else { return true }
    while let dequeueValue = queue.dequeue() {
        if dequeueValue < smallest {
            smallest = dequeueValue
        }
    }
        return false
    
    }

}
