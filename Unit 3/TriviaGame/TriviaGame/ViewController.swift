//
//  ViewController.swift
//  TriviaGame
//
//  Created by Genesis Mosquera on 12/6/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit
// q, cat, corr a, inc a
class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var answerTableView: UITableView!
    
    var currentQuestion = "" {
        didSet {
            
            self.questionLabel.text = self.currentQuestion
        }
    }
    
    var currentIncorrectAnswers: [String] = []{
        didSet {
            answerTableView.reloadData()
        }
    }
    var currentCorrectAnswer = ""
    
    var allAnswers: [String] {
        return currentIncorrectAnswers + [currentCorrectAnswer]
    }
    
    
    
    var currentCategory = "" {
        didSet {
            self.categoryLabel.text = self.currentCategory
        }
    }
    
    var triviaQuestions = [Question]()
    var triviaIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerTableView.dataSource = self
        answerTableView.delegate = self
        loadData{ (data)
            in
            self.parseJSON(data: data)
            DispatchQueue.main.async {
                self.nextQuestion()
            }
        }
    }
    
    
   @objc func nextQuestion() {
    if triviaIndex == triviaQuestions.count { triviaIndex = 0 }
        self.currentQuestion = self.triviaQuestions[triviaIndex].question
        self.currentCategory = self.triviaQuestions[triviaIndex].category
        self.currentIncorrectAnswers = self.triviaQuestions[triviaIndex].incorrect_answers
        self.currentCorrectAnswer = self.triviaQuestions[triviaIndex].correct_answer
        triviaIndex += 1
    }
    
    func loadData(completionHandler: @escaping ((Data) -> Void)) {
        // url
        guard let myUrl = URL.init(string: "https://opentdb.com/api.php?amount=10") else { return }
        //url to get data
        URLSession.shared.dataTask(with: myUrl) {(data, response, error)
            in
            // the let repsonse and let error lines are optional
            if let response = response {
                print(response)
            }
            if let error = error {
                print("url failed because :\(error)")
            }
            if let data = data {
                completionHandler(data)
                do {
                    let triviaData = try
                    JSONDecoder().decode(TriviaData.self, from: data)
                    self.triviaQuestions = triviaData.results
                } catch {
                    print(error)
                }
            }
            
            }.resume() // if you don't write resume, it doesn't complete
        
    }
    
    
    func parseJSON(data: Data) {
        do {
            let triviaData = try
                JSONDecoder().decode(TriviaData.self, from: data)
            self.triviaQuestions = triviaData.results
        } catch { // catch has its own built in error code
            print("JSON failed because: \(error)")
        }
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.selectionStyle = .none
        let answerToSet = allAnswers[indexPath.row]
        cell.textLabel?.text = answerToSet
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentIncorrectAnswers.count + 1
    }
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.cellForRow(at: indexPath)?.textLabel?.text == currentCorrectAnswer {
            tableView.cellForRow(at: indexPath)?.backgroundColor = .green
            let _: Timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(nextQuestion), userInfo: nil, repeats: false)
        } else {
            tableView.cellForRow(at: indexPath)?.backgroundColor = .red
        }
    }
}
