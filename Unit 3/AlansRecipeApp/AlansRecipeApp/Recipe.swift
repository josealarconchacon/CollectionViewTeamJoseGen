//
//  Recipe.swift
//  AlansRecipeApp
//
//  Created by Genesis Mosquera on 12/10/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

class Recipe: Codable {
    
class OuterLayer: Codable {
    var hits: [Recipe]
    
    
    }
    class RecipeInfo: Codable {
        var label: String
        var image: String
        var url: String 
        
    }
    
        var recipe: RecipeInfo
}
