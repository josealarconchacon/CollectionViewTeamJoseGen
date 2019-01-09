//
//  main.swift
//  Stacks
//
//  Created by Genesis Mosquera on 11/27/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

// implement Node class
class Node<T: Equatable>: CustomStringConvertible, Equatable {
    var value: T
    var next: Node?
    
    var description: String { // this computed property describes what the value is
        guard let next = next //this unwraps the next optional to get the value out of it
            else {return "\(value) -> nil"}
        return "\(value) -> \(next)"
    }
    //initializer
    init(value: T, next: Node? = nil) {
        self.value = value
       self.next = next //- this would be used if you were sure that there is a next value that is not nil
    }
    static func == (lhs: Node, rhs: Node) -> Bool {
        return
        lhs.value == rhs.value && lhs.next == rhs.next
    }
}
//let node9 = Node(value: 9)
//print(node9)

//implement LinkedList
struct LinkedList<T: Equatable>: CustomStringConvertible {
  private var head: Node<T>?
  private var tail: Node<T>?
    
    var description: String {
        guard let head = head else { return "list is empty"}
        return "\(head)"
    }
    // computed property
    public var first: Node<T>? { // read-only property
        return head
    }
    public var last: Node<T>? {
        return tail
    }
    public var isEmpty: Bool {
    return head == nil
    }
// append items to our linkedList via func append
    public mutating func append(value: T) {
        let newNode = Node(value: value)
        if let lastNode = tail {
            lastNode.next = newNode
        } else {
            head = newNode
        }
        tail = newNode
        
        }
    //remove last node in linked list
    @discardableResult
    public mutating func removeLast() -> Node<T>? {
        // is list empty
        guard !isEmpty else { return nil }
        
        var removedNode: Node<T>?
        
        // check if head and tail are the same
        if head == tail {
            removedNode = head
            head = nil
            tail = nil
            return removedNode
        }
        var currentNode = head
        while currentNode != nil {
            if let currNode = currentNode {
                if currNode.next == tail {
                    removedNode = currNode.next
                    currNode.next = nil
                    tail = currNode
                    break
                }
            }
            currentNode = currentNode?.next
        }
        
        return removedNode
    }
}

//var linkedList = LinkedList<Int>()
//linkedList.isEmpty ? print("is empty") : print("has values")
//linkedList.append(value: 7)
//linkedList.append(value: 11)
//linkedList.append(value: 5)
//linkedList.append(value: 9)
//linkedList.isEmpty ? print("is empty") : print("has values")
//print(linkedList)
//linkedList.removeLast()
//print(linkedList)
//linkedList.removeLast()
//linkedList.removeLast()
//linkedList.removeLast()
//print(linkedList)

//// implement a Stack using the built-in Array structure
//struct Stack<T> {
//    private var items = [T]() //items in the Stack e.g. plates, books
//    public var isEmpty: Bool {
//        return items.count == 0
//    }
//    // look at the top items, does not remove it from the stack
//    public var peek: T? {
//        return items.last
//    }
//    //adding items to the stack
//    public mutating func push( item: T) {
//        items.append(item)
//    }
//    //remove items from the stack
//    public mutating func pop() -> T? {
//       return items.removeLast()
//    }
//}
//var intStack = Stack<Int>()
//intStack.push(item: 8)
//intStack.push(item: 11)
//print(intStack)
//intStack.pop()
//print(intStack)

// implementing a stack using a linked list

struct Stack<T: Equatable>: CustomStringConvertible {
    private var items = LinkedList<T>()
    
    public var isEmpty: Bool {
        return items.first == nil
    }
    public var peek: T? {
        return items.last?.value
    }
    var description: String {
        guard !isEmpty else { return "empty stack" }
        var str = "["
        var currentNode = items.first // this is the head
        while currentNode != nil {
            str += currentNode?
                .next == nil ? "\(currentNode!.value)" : "\(currentNode!.value),"
            currentNode = currentNode?.next
        }
        return str + "]"
    }
    
    public mutating func push( value: T) {
        items.append(value: value)
    }
    public mutating func pop() ->T? {
        return items.removeLast()?.value
    }
}
var characterStack = Stack<Character>()
characterStack.push(value: "x")
characterStack.push(value: "f")
characterStack.push(value: "g")
print(characterStack)
let poppedValue = characterStack.pop()
print("popped value is \(poppedValue)")
print(characterStack)
