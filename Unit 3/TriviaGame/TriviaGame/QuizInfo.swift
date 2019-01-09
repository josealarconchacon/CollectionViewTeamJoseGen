//
//  QuizInfo.swift
//  TriviaGame
//
//  Created by Genesis Mosquera on 12/6/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

struct TriviaData: Codable {
    let results: [Question]
}
struct Question: Codable {
    let category: String
    let question: String
    let correct_answer: String
    let incorrect_answers: [String]
}
