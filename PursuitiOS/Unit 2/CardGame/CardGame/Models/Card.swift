//
//  Card.swift
//  CardGame
//
//  Created by Genesis Mosquera on 11/12/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

protocol Card {
    var image: UIImage { get }
    static func getCards(numberOfCards: Int) -> [Self]
}
