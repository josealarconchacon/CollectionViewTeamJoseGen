//
//  QueueLabTests.swift
//  QueueTests
//
//  Created by Genesis Mosquera on 12/4/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import XCTest
@testable import Queue

class QueueLabTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testSmallestElement() {
        var queue = Queue<Int>()
        queue.enqueue(-5)
        queue.enqueue(11)
        queue.enqueue(-33)
        queue.enqueue(17)
        XCTAssertEqual(QueueLab.smallestElement(queue), -33,  "should be -33")
    }
    
    func testSumOfValues() {
        var queue = Queue<Int>()
        queue.enqueue(0)
        queue.enqueue(11)
        XCTAssertEqual(QueueLab.sumOfElements(queue), 11, "should be 11")
    }
    
    func testFirstElement() {
        var queue = Queue<Int>()
        queue.enqueue(8)
        queue.enqueue(7)
        queue.enqueue(3)
        XCTAssertEqual(QueueLab.isQueueSortedAscending(queue), 3, 7, 8 , "should be 3, 7, 8")
    }
    
}
