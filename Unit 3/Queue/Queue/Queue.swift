//
//  Queue.swift
//  Queue
//
//  Created by Genesis Mosquera on 12/4/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

struct Queue<T: Equatable>: CustomStringConvertible {
    private var head: LLNode<T>? // could be nil
    private var tail: LLNode<T>? // ""
    private var itemCount = 0 // keep track of items as enqueing and dequeing
    var description: String{
        guard let head = head else { return "empty" }
        return "(Back) \(head) (Front) "
    }
    
    public var isEmpty: Bool {
        return head == nil
    }
    public var peek: T? { // read-only property
        return head?.value
    }
    public var count: Int {
        return itemCount
    }
    
    public mutating func enqueue(_ value: T) {
        let newNode = LLNode(value: value)
        guard let lastNode = tail else {
            itemCount += 1
            head = newNode
            tail = newNode
            return
        }
        itemCount += 1
        lastNode.next = newNode
        tail = newNode
    }
    // remove item from the front of the queue
    // modify the head next value
    // return the value removed (T?)
    // reminder: check for empty state first
    @discardableResult
    public mutating func dequeue() -> T? {
        var valueRemoved: T?
        guard !isEmpty else { return valueRemoved }
       itemCount -= 1
        valueRemoved = head?.value
        if head == tail { tail = nil}
        head = head?.next
        return valueRemoved
    }
}
