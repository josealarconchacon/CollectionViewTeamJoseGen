//
//  Recipe.swift
//  Recipes
//
//  Created by Genesis Mosquera on 11/7/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

struct Recipe {
    //properties
    var name: String
    var image: UIImage
    //var ingredients: [String: String] // ingredient, quantity
    //var directions: [String]
    
    //methods
    
    //type method
    static func getRecipes() -> [Recipe] {
    var recipes = [Recipe]()
        let classicDeviledEggs = Recipe (name: "Classic Deviled Eggs", image: UIImage.init(named:"classic-deviled-eggs")!)
        let perfectRoastChicken = Recipe(name: "Perfect Roast Chicken", image: UIImage.init(named:"perfect-roast-chicken")!)
             let garlicRoastedPotatoes = Recipe(name: "Garlic Roasted Potatoes", image: UIImage.init(named:"garlic-roated-potatoes")!)
             let perfectPotRoast = Recipe(name: "Perfect Pot Roast", image: UIImage.init(named:"perfect-pot-roast")!)
        recipes = [classicDeviledEggs, perfectRoastChicken, garlicRoastedPotatoes, perfectPotRoast]
        
        return recipes
    }
    
    //instance methods
    
}
