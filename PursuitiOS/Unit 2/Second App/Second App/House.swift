//
//  House.swift
//  Second App
//
//  Created by Genesis Mosquera on 11/8/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class House {
    var name: String
    var banner: UIImage
    var words: String
    var colors: UIColor
    init(name: String, banner: UIImage, words: String, colors: UIColor) {
        self.name = name
        self.banner = banner
        self.words = words
        self.colors = colors
    }
}
