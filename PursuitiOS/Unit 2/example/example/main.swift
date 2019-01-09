//
//  main.swift
//  example
//
//  Created by Genesis Mosquera on 11/14/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

// create an enum called superhero and then create a protocol that Transfromation that transforms the object from .notHulk to .hulk
//
//
//protocol Transformation {
//    mutating func transform ()
//}
//
//enum SuperHero: Transformation {
//       case notHulk, hulk
//
//   mutating func transform() {
//        switch self {
//        case .notHulk:
//            self = .hulk
//        case .hulk:
//            self = .notHulk
//        }
//    }
//}
//
//struct Pokemon: Transformation {
//    var name = "pikachu"
//    mutating func transform() {
//        self.name = "detective pikachu"
//    }
//}
//
//var thing = Pokemon()
//print(thing.name)
//thing.transform()
//print(thing.name)
//
//
//var bruceBanner: SuperHero = .notHulk
//print(bruceBanner)
//bruceBanner.transform()
//print(bruceBanner)
switch textField {
case userInputTextField:
    guessedArray = textField.text!.map{String($0)}
    textField.isHidden = true
    userInput.append(userInputTextField.text ?? "")
    print(userInput)
    let setWord = hangmanBrain.setWord(input: userInputTextField.text!).lowercased()
    secretWord.text = "\(setWord)"
    
case guessTextField:
    guard let count = guessTextField.text?.count, count == 1 else { return false }
    let guessedWord = hangmanBrain.checkForGuess(word: guessedArray, guess: guessTextField.text!)
    guessTextField.text = ""
    secretWord.text = "\(guessedWord)"
default:
    break
}
textField.resignFirstResponder()
return true
}

func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    print(textField.text ?? "")
    return true
}

}



Collapse
Message Input

Message Oniel
