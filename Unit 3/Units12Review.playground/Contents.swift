import Cocoa


// REVIEW

//=====================================================================================
// FUNDAMENTALS
//=====================================================================================

// loops
//given an array of ints print out only the even numbers use where

let number = [3,4,8,12,6,-3,11,80]

for i in number where i % 2 == 0 {
    print(i)
}

let playerAge = 20
switch playerAge {
case 0...5:
    print("player is a preschooler")
case 18...30 where playerAge % 2 == 0:
    print("player age is even")
default:
    print("not a valid age")
}

// properties


// in a class, struct, enum... a function is referred to as a method

// outside a type a function remains the same


// functions - all closures are functions but not all functions are closures
func coffeeOrTea(coffee: Bool, sugarAmount: Int = 2) {
    let choice = coffee ? "coffee" : "tea"
    print("here is your \(choice) with \(sugarAmount) sugars")
}
coffeeOrTea(coffee: true, sugarAmount: 3)


// high order functions
let nums = [4, 5, 7, 12]

// using a higher order function, print the sum of nums

print(nums.reduce(0, +))


// array

let matrix = [[2, 9 ,0],
              [4, 2, 5],
              [8, 11, 5]]
// iterate through this matrix array and pritn out all the elements
    var dia = 0
for number in 0..<matrix.count {
dia += matrix[number][number]
    dia += matrix[number][matrix.count - 1 - number]
}
print(dia)
//
for array in matrix {
    for elementsInArray in array {
        print(elementsInArray, separator: "", terminator: "")
    }
}


//
func customCompactMap(arr: [Int?], closure: (Int?) -> Bool) -> [Int] {
    var newArr = [Int]()
    for element in arr {
        if closure(element) {
            if let newElement = element {
                newArr.append(newElement)
            }
        }
    }
    return newArr
}

let optionalIntArray = [1, 2, nil, 4, 5, nil, 7, 8]
print(customCompactMap(arr: optionalIntArray) {num in num != nil ? true : false})
// higher order functions

// array

// dictionary

let marathons: [String: String] = ["New York": "New York City", "Sweden": "Stockholm", "Japan": "Tokyo"]
//1.
print(marathons["Japan"] ?? "nothing")

//2. preferred way to do it
if let place = marathons["Japan"]{
    print(place)
}

// Where is the Stockholm marathon located?
for (key, value) in marathons {
    if value == "Stockholm" {
    print(key)
}
}


// print out the name of the Japan marathon



// set - a collection of values that's unique and unsorted
let phoneNumbers = ["2014636439", "2014011033", "2014590102", "2014636439"]

// remove the duplicates from phoneNumbers
let setVar = Set(phoneNumbers)
print(setVar)


// enums

enum Subway {
    case greenLine(Int, Int) // two associated values
    case yellowLine(Character)
}
let subway = Subway.greenLine(4, 10)

switch subway {
case .greenLine(let name, let numberOfCars):
    print("train is \(name) train and has \(numberOfCars) cars")
case .yellowLine(let char):
    print("train is \(char)")
}

// raw value
enum TableViewSection: Int {
    case section1 = 1
    case section2
    case section3
}
// raw values
enum Movie: String {
    case beautifulMind = "beautiful_mind"
    case elf
}
let movie = Movie.beautifulMind
print(movie.rawValue)


// closures - capture values -
// create a closure that takes two strings as input and returns the longest character count of the two strings

//var longestStr = {(strOne: String, strTwo: String) -> Int
//     in {
//    if strOne.count > strTwo.count {
//    return strOne.count
//    } else {
//        return strTwo.count
//    }
//}
//}
//print(longestStr("genesis", "mosquera"))

// map goes through every element and transforms it
// reduce - combines the elements
// create a filter - to search for an element

func customFilter(arr: [Int], closure:(Int) -> Bool) -> [Int] {
    var filteredArray: [Int] = []
    for element in arr {
    if closure(element) {
        filteredArray.append(element)
    }
}
return filteredArray
}

// structs - they have memberwide initializers/ default initializers

// classes - you initialize because it does not have a default initializer.

class Person {
    // properties - type properties, instance properties
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    // methods - type methods, instance methods
    
    static func personInfo() {
        print("a person is a human being")
    }
}
// access (type method) personInfo()
Person.personInfo()
// type is Person, method is "personInfo"

// create an instance of Person()

let aaron = Person.init(name: "Aaron", age: 24)

print(aaron.age) // 24
//=====================================================================================
// DATA STRUCTURES AND ALGORITHMS
//=====================================================================================

// big O

// node
// implement Node class

class Node<T: Equatable> : CustomStringConvertible, Equatable {
    static func == (lhs: Node<T>, rhs: Node<T>) -> Bool {
        return lhs.value == rhs.value && lhs.value == rhs.value
    }
}
// create a linked node structure that resembles the output
// 6 -> 8 -> 2 -> nil
//let node = Node(value: 6)
//node.next = Node(value: 8)
//node.next?.next = Node(value: 2)
//print(node)

// linked list

// stack - LIFO
private var tail.Node<T>?
public mutating func push(item: T) {
    let newNode = Node(value: item)
    guard let lastNode = tail else {
//empty list
        head = newNode
        tail = newNode
        return
    }
// we have nodes in the list
    
    lastNode.next = newNode
    tail = newNode
}
public mutating func pop() -> T? {
    guard let lastNode = tail else {
        return nil
}
 var currentNode = head
    while currentNode?.next != nil {
        //base case
        if currentNode?.next == tail {
            
        }
        currentNode = currentNode?.next
    }
    
}
var stackList = StackList<String>()
stackList.push(item: "Swift")
stackList.push(item: "Objective-C")
stackList.push(item: "Python")
stackList.push(item: "Rust")
print(stackList)
// queue - FIFO
// enqueue(add), dequeue(remove), peek, isEmpty, count
///
struct Queue<T> {
    private var items = [T]()
    public mutating func enqueue(item: T) {
        items.append(item)
    }
    public mutating func dequeue() -> T{
        return items.removeFirst()
    }
}
// implement a queue using an array
var queue = Queue<Int>()
queue.enqueue(item: 5)
queue.enqueue(item: 8)
queue.enqueue(item: 10)
print(queue)
queue.dequeue()
print(queue)
// hashtable, hashmap
