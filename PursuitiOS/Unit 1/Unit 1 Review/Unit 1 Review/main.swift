//
//  main.swift
//  Unit 1 Review
//
//  Created by Genesis Mosquera on 11/1/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

//unit 1 Final Review
////////////////////////////

//types, variables, logic operations
// %, <, >, >=, let, var, ! (unary operator) takees one operand
//Int, Bool, String, Double

///////////////////////////
//control flow
//if/else, while, repeat-while
///////////////////////////

//using while to print numbers 1 through 10
//checks condition before entering the scope of the loop
//repeat while checks after entering the scope of the loop
var num = 0
while num <= 10 {
    //terminator overrides default end line "\n" from print() function
    //separator adds specific given string bewteen strings
    print(num, terminator: " ")
    print("number is", "\(num)", separator: "|||")
    num += 1
}
var isReviewing = true
//while isReviewing {
//    print("is reviewing")
//    isReviewing = false
//}
//print("Please enter your name.")
//var willContinue = "no"
//if let _ = readLine() {
//    repeat {
//        print("Do you want to continue?")
//        if let shouldContinue = readLine() {
//            willContinue = shouldContinue == "yes" ? "yes" : "no"
//        }
//    } while willContinue == "yes"
//}
//print("end of repeat-while")

//loops - for-in
//used to iterate through information
for numbers in 5...15 where numbers % 2 == 0{
    print(numbers)
}

///////////////////////////
//strings
///////////////////////////

var name = "Diego" // create a string literal
name += " " + "Estrella"
//name.append("Estrella")
print(name)

let sentence = " hello swift how are you today? "
print(sentence)
let trimmedString = sentence.trimmingCharacters(in: CharacterSet.whitespaces)
print(trimmedString)
let components = trimmedString.components(separatedBy: " ")
print(components)

let noSpacesString = trimmedString.replacingOccurrences(of: " ", with: "")
print(noSpacesString)

let punctuatedString = "Hello, Swift!, How much I love thee? Alot!!"
let nonPunctuatedString = punctuatedString.components(separatedBy: CharacterSet.punctuationCharacters)
print(nonPunctuatedString)

// Arrays
/*
 collection of ordered elements
 
 //create an array
 
*/
let cities = ["stockholm", "tokyo", "berlin", "boston"]

// loop through array
for city in cities {
    print(city)
}
// capitalizing
for city in cities {
    print(city.capitalized)
}
// using filter return Tokyo
// filter takes one argument
var city = cities.filter {$0 == "tokyo"}
print(city)

let numbers = [23, 7, 10, 10, 5, 5, 6, 4]

//using higher order function return the result of adding all the
// elemnts of numbers and print
var sum = numbers.reduce(0, +)
print(sum)


//using ---- higher order function square each element in numbers and print the result

print(numbers.map {$0 * $0})
// remove elements from an array
//search
//modified


//////// OPTIONALS/////////

// which ways can we safely (swiflt) unwrap optionals
let firstName: String? = "Alyson"
//optional binding
if let name = firstName{
    print(name)
}
// unwrap a Double and default to 0.0 if value is nil
let cents: Double? = 0.45 // cents
let unwrappedCents = cents ?? 0.0 //nil coelescing
print("cents value is \(unwrappedCents)")


let number: String = "10"

// write a function that takes in a String and returns a Bool if the String is a valid integer
func ifStringIsReal(a: String) -> Bool {
    if let _ = Int(a) {
        return true
    } else {
        return false
    }
}
print(ifStringIsReal(a: number))

//using guard to safely unwrap, only used in functions
func validPassword(password: String) -> String {
    // needs to be a valid integer
    guard let password = Int(password) else {
        return "not a valid integer" // get executed if password is nil
    }
    print("Entry granted with password \(password)")
    return "logged in succesfully"
}
let password = "12345"
validPassword(password: password)
print(validPassword(password: password))

////////////////////////////////////////////////////////////////////////
//////       dictionaries /////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////
//////       sets  ////// /////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////
//////      functions     /////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////
//////     closures ///// /////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////
//////   create map and test /////////////////////////////////////////////
func customMap (arr: [Int], closure: (Int) -> Int) -> [Int] {
    var newArr = [Int]()
    for num in arr {
        newArr.append(closure(num))
    }
    return newArr
}

//print(customMap(arr: [1, 2, 3]) { (num: Int) -> Int in
//    return num + 1
//})
// or

print(customMap(arr: [1, 2, 3]) {$0 + 1})
////////////////////////////////////////////////////////////////////////
//////       enums - a finite collection of similar values   // /// /////////////////////////

enum Gender: CaseIterable { // conformed to the CaseIterable protocol
    case male, female
}
print("gender has \(Gender.allCases.count) options")

// associate a value(s) with a case on the enum
// e.g. case brown(Character)
enum MetroLine : CaseIterable {
    case green(Int, Int, Int)// 4,5,6 - three associative values
    case red(Int)// 1, 2, 4
    case orange(Character) // B, D, H, F
    case purple(Int)
    case yellow(Character)
    case grey(Character)
    case brown(Character) // J,Z
    case blue(Character)// A, C, E


    // give all cases default associative values
   static var allCases: [MetroLine] = [.green(4,5,6), .red(2), .orange("B"), .purple(7), .yellow("Q"), .grey("S"), .brown("Z"), .blue("A")]
}

// iterate through all the metrolines
for trainLine in MetroLine.allCases {
    print("train line is \(trainLine)")  // print with default associative value
}

// create an instance of a MetroLine
let greenLine = MetroLine.green

//switch on an enum - refactored to a function

func getMetroLineInfo(metroLine: MetroLine) {
    switch metroLine {
    case .green(let line1, let line2, let line3):
        print("green line has the following trains: \(line1), \(line2),\(line3) ")
case .red:
    print("red line")
case .orange:
    print("orange line")
case .purple(let trainLine):
    print("purple line is the \(trainLine) train")
case .yellow(let trainYellow):
    print("yellow line is the \(trainYellow) line")
case .grey:
    print("grey line")
case .brown:
    print("brown line")
    case .blue:
        print("blue line")
    }
}
//call getMetroLineInfo() function
getMetroLineInfo(metroLine: MetroLine.purple(7))

getMetroLineInfo(metroLine: MetroLine.green(4, 5, 6))

// exercise -call two more lines

////////////////////////////////////////////////////////////////////////
//////      structs   // /////////////////////////////////////////////
// structs are value types - they get copies of the original

////////////////////////////////////////////////////////////////////////
//////      objects  // /////////////////////////////////////////////


struct Computer { // create a Computer object
    // properties
    var hardDriveStorage: Double //
    var ram: Int // storage
    var processor: Double // e.g 2.4 quad core
    var brand: String // e.g Apple of our hearts
    
    // methods
    func goOnline() {
        print("google search...")
    }
    func readLine(input: String?) {
        if let userInput = input {
            print("User entered: \(userInput)")
        }
        func getDescription () {
            print("\(brand) has \(hardDriveStorage) had storage and \(ram) memory")
        }
    }
}

// create an instance of Computer()
var mac = Computer(hardDriveStorage: 256, ram: 16, processor: 2.4, brand: "Apple Computer")
mac.goOnline()
mac.readLine(input: "Hello, world")

//  create a pc from mac
var pc = mac
pc.brand = "Microsoft Coorporation"
//mac.getDescription () // copy, value-type - pc does not mutate mac's copy



////////////////////////////////////////////////////////////////////////
//////    classes   // /////////////////////////////////////////////

class Podcast { // create a Podcast object }
    var name: String
    var author: String
    var feedURL: String
    var createdDate: String
    var duration: Double
    var genre: String
    
    
    // other property types: computed property, property observers, type property
    
    init(name: String, author: String, feedURL: String, createdDate: String, duration: Double, genre: String) {
        self.name = name
        self.author = author
        self.feedURL = feedURL
        self.createdDate = createdDate
        self.duration = duration
        self.genre = genre
    }
    // methods
    func getPodcastInfo() {
        print("The author of \(name) is \(author)")
    }
}
 // create an instance of Podcast()
let swiftOverCoffee = Podcast(name:"Swift Over Coffee", author: "Paul Hudson", feedURL: "http:..", createdDate: "September 7, 2018", duration: 30.0, genre: "Technology")

swiftOverCoffee.getPodcastInfo()
let swiftBySwiftSundell = swiftOverCoffee
swiftOverCoffee.author = "John Sundell"
swiftOverCoffee.getPodcastInfo()


/////////////////////////////////////////////////////
// properties
//////////////////////////////////////////////////
