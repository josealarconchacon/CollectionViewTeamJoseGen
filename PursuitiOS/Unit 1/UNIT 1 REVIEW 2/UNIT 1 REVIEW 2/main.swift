//
//  main.swift
//  UNIT 1 REVIEW 2
//
//  Created by Genesis Mosquera on 11/5/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

// Unit 1 Review

/*
 Given the following exerpt from the declaration of independance, find the most frequent word that is longer than 5 characters.
 
 - use components(separatedBy:) to break up the string into an array.
 
 - use CharacterSet.punctuationCharacters in union with any other characters you don't want in your array, like spaces and new lines.
 */


let declarationOfIndependance = """
When in the Course of human events, it becomes necessary for one people to dissolve the
political bands which have connected them with another, and to assume among the powers of the
earth, the separate and equal station to which the Laws of Nature and of Nature's God entitle
them, a decent respect to the opinions of mankind requires that they should declare the causes
which impel them to the separation.
We hold these truths to be self-evident, that all men are created equal, that they are endowed by
their Creator with certain unalienable Rights, that among these are Life, Liberty and the pursuit
of Happiness. That to secure these rights, Governments are instituted among Men, deriving
their just powers from the consent of the governed, That whenever any Form of Government
becomes destructive of these ends, it is the Right of the People to alter or to abolish it, and to
institute new Government, laying its foundation on such principles and organizing its powers in
such form, as to them shall seem most likely to effect their Safety and Happiness. Prudence,
indeed, will dictate that Governments long established should not be changed for light and
transient causes; and accordingly all experience hath shewn, that mankind are more disposed to
suffer, while evils are sufferable, than to right themselves by abolishing the forms to which they
are accustomed. But when a long train of abuses and usurpations, pursuing invariably the same
Object evinces a design to reduce them under absolute Despotism, it is their right, it is their duty,
to throw off such Government, and to provide new Guards for their future security. Such has
been the patient sufferance of these Colonies; and such is now the necessity which constrains
them to alter their former Systems of Government. The history of the present King of Great
Britain is a history of repeated injuries and usurpations, all having in direct object the
establishment of an absolute Tyranny over these States. To prove this, let Facts be submitted to a
candid world.
"""
let removeCommas = declarationOfIndependance.replacingOccurrences(of: ",", with: "").replacingOccurrences(of: ".", with: "")

let avoid: CharacterSet = [" ", "\n"]

var arrayDOI = removeCommas.components(separatedBy: CharacterSet.punctuationCharacters.union(avoid))

arrayDOI = arrayDOI.map({$0.lowercased()})
print(arrayDOI)

func findMostFrequent(_ arr: [String]) -> String {
    var commonWord: String = ""
    var commonWordCounter: Int = 0
    for word in arr {
        if arr.filter({$0 == word}).count > commonWordCounter && word.count > 5 {
            commonWordCounter = arr.filter({$0 == word}).count
            commonWord = word
        }
    }
    return commonWord
}
print(findMostFrequent(arrayDOI))



// Question 2

// Given the dictionary deposits that maps a persons name to an array of deposits that have been made to their account.

var deposits: [String: [Double]] = [
    "Williams" : [300.65, 270.45, 24.70, 52.00, 99.99],
    "Cooper" : [200.56, 55.00, 600.78, 305.15, 410.76, 35.00],
    "Davies" : [400.98, 56.98, 300.00],
    "Clark" : [555.23, 45.67, 99.95, 80.76, 56.99, 46.50, 265.70],
    "Johnson" : [12.56, 300.00, 640.50, 255.60, 26.88]
]

//a. Write code to to print the name and total amount deposited of the person who recieved the most money.

func findRichestPerson(_ dictionary: [String: [Double]]) -> String {
    var nameAndTotalDeposit: [String:Double] = [:]
    
    for (name,deposit) in dictionary {
        nameAndTotalDeposit[name] = deposit.reduce(0, {(num1,num2) -> Double in return num1 + num2})
    }
    
    var biggestAmt: Double = 0.0
    var richestGuy: String = ""
    
    for (name,deposit) in nameAndTotalDeposit {
        if deposit > biggestAmt {
            biggestAmt = deposit
            richestGuy = name
        }
    }
    
    return richestGuy
}

print(findRichestPerson(deposits))

//b. Create an array called stollenCents, iterate over deposits for each person and steal their cents! ... like Office Space or Superman 3. Calculate the decimal part of each value, add it to the stollenCents array and round down the value in the dict.

var stollenCents: [Double] = []

for (name,depositsArr) in deposits {
    for (i,num) in depositsArr.enumerated() {
        let numTimes100 = num * 100
        let num100Mod100 = Int(numTimes100) % 100
        let differenceToCents = Double(num100Mod100)/100
        stollenCents.append(differenceToCents)
        deposits[name]?[i] = num - differenceToCents
    }
}

print(stollenCents)
print(deposits)

//c. How much money did you steal?

let calcTotal = {(arr: [Double]) -> Double in
    var sum: Double = 0.0
    for num in arr {
        sum += num
    }
    return sum
}
print(calcTotal(stollenCents))



// Question 3 - Make an array that contains all elements that appear more than twice in someRepeatsAgain.

var someRepeatsAgain = [25,11,30,31,50,28,4,37,13,20,24,38,28,14,44,33,7,43,39,35,36,42,1,40,7,14,23,46,21,3911,42,12,38,41,48,20,23,29,24,50,41,38,23,11,30,50,13,13,16,10,8,3,43,10,20,28,39,24,36,21,13,40,25,37,39,31,4,46,20,38,2,7,11,11,41,45,9,49,31,38,23,41,16,49,29,14,6,6,11,5,39,13,17,43,1,1,15,25]

var arrayMoreThanTwice: [Int] = []

for num in someRepeatsAgain {
    if someRepeatsAgain.filter({$0 == num}).count > 2 && !arrayMoreThanTwice.contains(num) {
        arrayMoreThanTwice.append(num)
    }
}
print(arrayMoreThanTwice)



// Question 4 Identify if there are 3 integers in the following array that sum to 10. If so, print them. If there are multiple triplets, print all possible triplets.

var tripleSumArr = [-20,-14, -8,-5,-3,-2,1,2,3,4,9,15,20,30]

for i in tripleSumArr[0...tripleSumArr.count-3] {
    for j in tripleSumArr[0...tripleSumArr.count-2] {
        for k in tripleSumArr[0...tripleSumArr.count-1] {
            if i + j + k == 10 && i != j && i != k && j != k {
                print("\(i),\(j),\(k)")
            }
        }
    }
}



// 5 Given an Array of Arrays of Ints, find the Array of Ints with the largest sum:

var input = [[2,4,1],[3,0],[9,3]]

func findArrWithLargestSum(_ arrOfArrs: [[Int]]) -> [Int] {
    var sum = 0
    var largestSum = 0
    var returnArr: [Int] = []
    for arr in arrOfArrs {
        for num in arr {
            sum += num
        }
        if sum > largestSum {
            largestSum = sum
            returnArr = arr
        }
    }
    return returnArr
}

print(findArrWithLargestSum(input))



// 6 Given an array of Characters, create a String ignoring any uppercase Characters and spaces.  Then uppercase every other character of the String.

var arr: [Character] = ["a","p","P","l","E"," ","S","a","u","C","e"]

var newArr: [Character] = []
for char in arr {
    if String(char) == String(char).lowercased() && char != " " {
        newArr.append(char)
    }
}
var answerStr: String = ""
for (index,char) in newArr.enumerated() {
    if index % 2 == 0 {
        answerStr.append(String(char).uppercased())
    } else {
        answerStr.append(String(char).lowercased())
    }
}
print(answerStr)
let longestCharCount = {(str1: String, str2: String) -> Int in
    var returnNum = 0
    if str1.count > str2.count {
        returnNum = str1.count
    } else {
        returnNum = str2.count
    }
    return returnNum
}



// 8

let myArray = [34,42,42,1,3,4,3,2,49]

//Sort myArray in ascending order by defining the constant ascendingOrder below.

let ascendingOrder = {(num1: Int, num2: Int) -> Bool in
    return num1 < num2
}
let mySortedArray = myArray.sorted(by: ascendingOrder)
print(mySortedArray)

// Sort myArray in descending order by defining the constant descendingOrder below.

let descendingOrder = {(num1: Int, num2: Int) -> Bool in
    return num1 > num2
}
let mySecondSortedArray = myArray.sorted(by: descendingOrder)
print(mySecondSortedArray)




// 9
let letterValues: [Character:Int] = [
    "a" : 54,
    "b" : 24,
    "c" : 42,
    "d" : 31,
    "e" : 35,
    "f" : 14,
    "g" : 15,
    "h" : 311,
    "i" : 312,
    "j" : 32,
    "k" : 93,
    "l" : 203,
    "m" : 212,
    "n" : 41,
    "o" : 102,
    "p" : 999,
    "q" : 1044,
    "r" : 404,
    "s" : 649,
    "t" : 414,
    "u" : 121,
    "v" : 838,
    "w" : 555,
    "x" : 1001,
    "y" : 123,
    "z" : 432
]

//a. Sort the string below in descending order according the dictionary letterValues
var codeString = "aldfjaekwjnfaekjnf"

let codeStringSorted = codeString.sorted(by: {(char1, char2) -> Bool in
    if let safeLetter1 = letterValues[char1], let safeLetter2 = letterValues[char2] {
        return safeLetter1 > safeLetter2
    } else {
        return char1 < char2
    }
})

print(String(codeStringSorted.flatMap{String($0)}))


// b. Sort the string below in ascending order according the dictionary letterValues
var codeStringTwo = "znwemnrfewpiqn"

let codeStringSorted2 = codeString.sorted(by: {(char1, char2) -> Bool in
    return letterValues[char1]! < letterValues[char2]!
}
)

print(String(codeStringSorted2.flatMap{String($0)}))





// Question 10

class Giant {
    
    var name: String
    var weight: Double
    var homePlanet: String
    
    init(name: String, weight: Double, homePlanet: String) {
        self.name = name
        self.weight = weight
        self.homePlanet = homePlanet
    }
}

let fred = Giant(name: "Fred", weight: 340.0, homePlanet: "Earth")

fred.name = "Brick"
fred.weight = 999.2
fred.homePlanet = "Mars"
print(fred.homePlanet)




// Question 12

struct BankAccount {
    
    var owner: String
    var balance: Double
    
    mutating func deposit(_ amount: Double) {
        balance += amount
    }
    
    mutating func withdraw(_ amount: Double) {
        balance -= amount
    }
}

var joeAccount = BankAccount(owner: "Joe", balance: 100.0)
var joeOtherAccount = joeAccount
joeAccount.withdraw(50.0)
print(joeOtherAccount.balance)



// Question 14

//Write a function that takes an instance of GameOfThronesHouse as input and, using a switch statement, returns the correct house words. Do not have a default!

// House Baratheon - Ours is the Fury
// House Stark - Winter is coming
// House Targaryen - Fire and Blood
// House Lannister - A Lannister always pays his debts

enum GameOfThronesHouse: String {
    case stark, lannister, targaryen, baratheon
}

let houseStark = GameOfThronesHouse.stark

switch houseStark {
case .stark:
    print("Winter is coming")
case .lannister:
    print("A Lannister always pays his debts")
case .targaryen:
    print("Fire and Blood")
case .baratheon:
    print("Ours is the Fury")
}


// Question 15
// Using at least one higher order function to solve the problem. How many times does Ygritte say the word "nothing"
var ygrittesFavoriteWords =  "You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow! You know nothing Jon Snow!"

var arrayYgrittesWords = ygrittesFavoriteWords.components(separatedBy: " ")
print("Ygritte said \"nothing\" to Jon Snow \(arrayYgrittesWords.filter({$0 == "nothing"}).count) times")




// Question 16 What are the contents of library1 and library2? Why are they what they are?

//class MusicLibrary {
//    var tracks: [String]
//
//    init() {
//        tracks = []
//    }
//
//    func add(track: String) {
//        tracks.append(track)
//    }
//}


//let library1 = MusicLibrary()
//library1.add(track: "Michelle")
//library1.add(track: "Voodoo Child")
//let library2 = library1
//library2.add(track: "Come As You Are")
//print(library1.tracks)
//print(library2.tracks)


// Question 17 Rewrite the initializer of MusicLibrary so that the album Songs Of Innocence is added to beginning of tracks when making an instance.

class MusicLibrary {
    var tracks: [String]
    
    init() {
        tracks = songsOfInnocence
    }
    
    func add(track: String) {
        tracks.append(track)
    }
}

let songsOfInnocence = ["The Miracle (Of Joey Ramone)","Every Breaking Wave", "California (There Is No End to Love)","Song for Someone", "Iris (Hold Me Close)","Volcano", "Raised by Wolves", "Cedarwood Road", "Sleep Like a Baby Tonight", "This Is Where You Can Reach Me Now", "The Troubles" ]

let library1 = MusicLibrary()
library1.add(track: "Michelle")
library1.add(track: "Voodoo Child")
let library2 = library1
library2.add(track: "Come As You Are")
print(library1.tracks)
print(library2.tracks)


// 18 - Make a function that takes in an array of strings and returns an array of strings. The function should determine if the string can be typed out using just one row on the keyboard. If the string can be typed out using just one row, that string should be in the returned array.

let inputArray: [String] = ["Hello", "Alaska", "Dad", "Peace"]

func canBeTypedOutIn1Row(_ arr: [String]) -> [String] {
    var returnArr: [String] = []
    let row1 = Set("qwertyuiop")
    let row2 = Set("asdfghjkl")
    let row3 = Set("zxcvbnm")
    let rowArray = [row1,row2,row3]
    
    for word in arr {
        for set in rowArray {
            let wordSet = Set(word.lowercased())
            if wordSet.isSubset(of: set) {
                returnArr.append(word)
            }
        }
    }
    return returnArr
}
print(canBeTypedOutIn1Row(inputArray))




/*Question 19 - Create a function that takes a string and returns a bool. The function's job is to detect if the usage of capitals is correct using these three rules.
 
 All letters in this word are capitals, like "USA".
 All letters in this word are not capitals, like "coding".
 Only the first letter in this word is capital if it has more than one letter, like "Google".*/

func strToBool(_ str: String) -> Bool {
    var returnBool: Bool = false
    var testingString: String = ""
    let firstChar = str[str.startIndex]
    let secondChar = str.index(str.startIndex, offsetBy: 1)
    let thirdChar = str.index(str.startIndex, offsetBy: 2)
    let lastChar = str.index(before: str.endIndex)
    let thirdToLastChar = thirdChar...lastChar
    
    if String(firstChar) == String(firstChar).uppercased() {
        if String(str[secondChar]) == String(str[secondChar]).uppercased() {
            testingString.append(firstChar)
            testingString.append(str[secondChar])
            testingString.append(String(str[thirdToLastChar]).capitalized)
            print(testingString)
        } else if String(str[secondChar]) == String(str[secondChar]).lowercased() {
            testingString.append(firstChar)
            testingString.append(str[secondChar])
            testingString.append(String(str[thirdToLastChar]).lowercased())
            print(testingString)
        }
    } else if String(firstChar) == String(firstChar).lowercased() {
        if String(str[secondChar]) == String(str[secondChar]).lowercased() {
            testingString.append(firstChar)
            testingString.append(str[secondChar])
            testingString.append(String(str[thirdToLastChar]).lowercased())
            print(testingString)
        }
    }
    
    if testingString == str {
        returnBool = true
    }
    return returnBool
}
print(strToBool("coding"))



// Question 20
// Using the code above, Write a function that removes all the vowels from

var nightsWatchVow = "Night gathers, and now my watch begins. It shall not end until my death. I shall take no wife, hold no lands, father no children. I shall wear no crowns and win no glory. I shall live and die at my post. I am the sword in the darkness. I am the watcher on the walls. I am the shield that guards the realms of men. I pledge my life and honor to the Night's Watch, for this night and all the nights to come."


enum Vowel {
    case a, e, i , o , u
}

var theVowels: [Vowel] = [.a,.e,.i,.o,.u]

func removeVowelsFrom(_ str: inout String, _ arr: [Vowel]) -> String {
    for vowel in arr {
        switch vowel {
        case .a:
            str = str.replacingOccurrences(of: "a", with: "")
        case .e:
            str = str.replacingOccurrences(of: "e", with: "")
        case .i:
            str = str.replacingOccurrences(of: "i", with: "")
        case .o:
            str = str.replacingOccurrences(of: "o", with: "")
        case .u:
            str = str.replacingOccurrences(of: "u", with: "")
        }
    }
    return str
}

print(removeVowelsFrom(&nightsWatchVow, theVowels))
//let arrayOfVowel: [String] = ["a","e","i","o","u"]
//func removeVowelsFrom(_ str: inout String, _ arr: [String]) -> String {
//    for char in arr {
//        str = str.replacingOccurrences(of: String(char), with: "")
//        str = str.replacingOccurrences(of: String(char).uppercased(), with: "")
//    }
//    return str
//}
//
//print(removeVowelsFrom(&nightsWatchVow, arrayOfVowel))
