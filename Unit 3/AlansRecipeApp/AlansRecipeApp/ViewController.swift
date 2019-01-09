//
//  ViewController.swift
//  AlansRecipeApp
//
//  Created by Genesis Mosquera on 12/10/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var recipeSearchBar: UISearchBar!
    @IBOutlet weak var recipeTableView: UITableView!
    var recipes = [Recipe](){
        didSet {
            DispatchQueue.main.async {
            self.recipeTableView.reloadData()
        }
    }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recipeTableView.dataSource = self
        recipeSearchBar.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as?
        DetailViewController,
        let selectedIndexPath = recipeTableView.indexPathForSelectedRow
        else { return }
        let recipeToSend = recipes[selectedIndexPath.row]
        destination.recipe = recipeToSend
        
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = recipeTableView.dequeueReusableCell(withIdentifier: "RecipeCell"
            , for: indexPath)
        let recipeToSet = recipes[indexPath.row]
        cell.textLabel?.text = recipeToSet.recipe.label
        if let url = URL.init(string: recipeToSet.recipe.image) {
            do {
                let data = try Data.init(contentsOf: url)
                if let image = UIImage.init(data: data) {
                    cell.imageView?.image = image
                }
            } catch {
                print(error)
            }
    }
        return cell
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let searchTerm = searchBar.text {
            RecipeAPIClient.getRecipes(searchTerm: searchTerm) { (recipes, error) in
                if let error = error {
                    print(error)
                }
                if let recipes = recipes {
                    self.recipes = recipes
                }
            }
        }
        searchBar.resignFirstResponder()
    }
}
