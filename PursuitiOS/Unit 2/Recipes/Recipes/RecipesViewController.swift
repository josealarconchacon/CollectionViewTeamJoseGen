//
//  ViewController.swift
//  Recipes
//
//  Created by Genesis Mosquera on 11/7/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit


class RecipesViewController: UIViewController {

    // data
    var recipes = Recipe.getRecipes()
    
    // outlets
    @IBOutlet weak var recipeImage: UIImageView!
    @IBOutlet weak var recipeName: UILabel!
    @IBOutlet weak var recipeDescription: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //actions
    
    @IBAction func recipeChanged(_ sender: UIButton) {
        let recipe = recipes[sender.tag]
        updateRecipeUI(recipe: recipe)
    }
    func updateRecipeUI(recipe: Recipe) {
        recipeImage.image = recipe.image
        recipeName.text = recipe.name
    }
        }
