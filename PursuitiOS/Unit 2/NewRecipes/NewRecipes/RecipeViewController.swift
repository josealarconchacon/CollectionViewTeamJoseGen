//
//  ViewController.swift
//  NewRecipes
//
//  Created by Genesis Mosquera on 11/28/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {
    
    @IBOutlet weak var RecipeTableView: UITableView!
    
// data
    private var recipes = [Recipe]() 
//    didSet {
//    // reload the tavle view
//    RecipeTableView.reloadData()
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipes = Recipe.getRecipes()
        RecipeTableView.dataSource = self
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = RecipeTableView.indexPathForSelectedRow,
            let recipeDetailViewController = segue.destination as? RecipeDetailViewController else { return }
        let recipe = recipes[indexPath.row]
        // passing the recipe data to the recipeDetailViewController
        recipeDetailViewController.recipe = recipe
    }

}
// create extension and conform to UI
extension RecipeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //populate the cell with the image and the name of the recipe
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath)
        let recipe = recipes[indexPath.row]
        cell.imageView?.image = recipe.image
        cell.textLabel?.text = recipe.name
        cell.detailTextLabel?.text = recipe.description
    return cell
    }
}
