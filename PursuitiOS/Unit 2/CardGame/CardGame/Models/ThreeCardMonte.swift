//
//  ThreeCardMonte.swift
//  CardGame
//
//  Created by Genesis Mosquera on 11/12/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit
// static means type property
// use statics for constants
public struct ThreeCardMonteImageString {
    static let threeCard = "threeCard"
    static let kingCard = "kingCard"
}
// final indicates no other class can inherit from ThreeCardMonte
final class ThreeCardMonte: Card {
   // properties
    var image: UIImage
    var isWinningCard: Bool
    
    //initializer
    init(image: UIImage, isWinningCard: Bool) {
        self.image = image
       self.isWinningCard = isWinningCard
    }
    //methods
    static func getCards(numberOfCards: Int) -> [ThreeCardMonte] {
        var cards = [ThreeCardMonte]()
        for index in 1...numberOfCards {
            var card: ThreeCardMonte! // implicit unwrap 
            if index == 1 {
                card = ThreeCardMonte(image: UIImage(named: ThreeCardMonteImageString.kingCard)!, isWinningCard: true)
        } else {
                card = ThreeCardMonte(image: UIImage(named: ThreeCardMonteImageString.threeCard)!, isWinningCard: false)
        }
        cards.append(card)
    }
        return cards
    }
}
