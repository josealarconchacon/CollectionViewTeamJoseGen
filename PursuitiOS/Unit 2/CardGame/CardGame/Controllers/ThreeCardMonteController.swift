//
//  ThreeCardMonteController.swift
//  CardGame
//
//  Created by Genesis Mosquera on 11/12/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class ThreeCardMonteController: UIViewController {
    
    @IBOutlet var allCardButtons: [UIButton]!
    @IBOutlet weak var winningStatusLabel: UILabel!
    @IBOutlet weak var newGameButton: UIButton!
    
    // data
    var cards = ThreeCardMonte.getCards(numberOfCards: 3)
    
    override func viewDidLoad() {
        super .viewDidLoad()
        cards = cards.shuffled()
        title = "Three Card Monte"
    }
    @IBAction func flippedCard(_ cardButton: UIButton) {
    let card = cards[cardButton.tag] // cards[0] cards[1] cards[2]
    allCardButtons[cardButton.tag].setImage(card.image, for: .normal)
       //if lost flip the king
        if !card.isWinningCard {
            for (index,card) in cards.enumerated() {
                if card.image == UIImage(named: ThreeCardMonteImageString.kingCard) {
                    allCardButtons[index].setImage(card.image, for: .normal)
                    break
                }
            }
            }
        winningStatusLabel.text = card.isWinningCard ? "You won!": "You lost!"
        allCardButtons.forEach { $0.isEnabled = false}
        
    }
    
    @IBAction func newGame(_ newGameButton: UIButton) {
        winningStatusLabel.text = "Pick a card"
        cards = cards.shuffled()
        allCardButtons.forEach { $0.isEnabled = true}
        allCardButtons.forEach {$0.setImage(UIImage(named:"cardBackRed"), for: .normal)}
    }
}
