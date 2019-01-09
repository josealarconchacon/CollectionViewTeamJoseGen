//
//  HouseFactory.swift
//  Second App
//
//  Created by Genesis Mosquera on 11/8/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

struct HouseFactory {
    static let houses: [House] = [House.init(name: "Stark", banner: UIImage.init(named: "stark")!, words: "Winter is Coming!", colors: .gray),
                                  House.init(name: "Lannister", banner: UIImage.init(named: "lannister")!, words: "Hear me ROAR!", colors: UIColor.init(red: 185/255, green: 16/255, blue: 16/255, alpha: 1)),
                                  House.init(name: "Tully", banner: UIImage.init(named: "Tully")!, words: "Family. Duty. Honour", colors: UIColor.init(red: 16/255, green: 45/255, blue: 185/255, alpha: 1)),
                                  House.init(name: "Baratheon", banner: UIImage.init(named: "baratheon")!, words: "Ours is the FURY", colors: .yellow)
    ]
}
