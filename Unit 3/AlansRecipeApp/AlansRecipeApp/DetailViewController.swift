//
//  DetailViewController.swift
//  AlansRecipeApp
//
//  Created by Genesis Mosquera on 12/10/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var recipeTextView: UITextView!
    var recipe: Recipe!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeTextView.text = recipe.recipe.url

       
    }
    

}
