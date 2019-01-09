//
//  DetailViewController.swift
//  NewRecipes
//
//  Created by Genesis Mosquera on 11/28/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class RecipeDetailViewController: UIViewController {
    
    @IBOutlet weak var recipeImage: UIImageView!

    @IBOutlet weak var recipeDescription: UITextView!
    
    // data expected from RecipeViewController
   public var recipe: Recipe?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateReceipeUI()
        
    }
    private func updateReceipeUI() {
        guard let recipe = recipe else {
            fatalError("recipe is nil")
        }
        recipeImage.image = recipe.image
        recipeDescription.text = recipe.description
        title = recipe.name
    }


}
