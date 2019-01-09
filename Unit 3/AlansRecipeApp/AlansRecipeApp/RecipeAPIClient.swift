//
//  RecipeAPIClient.swift
//  AlansRecipeApp
//
//  Created by Genesis Mosquera on 12/10/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

enum RecipeErrors {
    
    case badURL(String)
    case badData(Error)
    case badDecoding(Error)
    
}

final class RecipeAPIClient {
    static func getRecipes(searchTerm: String, completionHandler: @escaping(([Recipe]?, RecipeErrors?) -> Void)) {
        
        guard let url = URL.init(string: "https://api.edamam.com/search?q=\(searchTerm)&app_id=af87afef&app_key=b2260d38e2617d8d1949ebca92de72e1") else {
            
            completionHandler(nil, .badURL("url failed"))
            return
        }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completionHandler(nil, .badData(error))
            }
            if let data = data {
                do {
                    let recipeData = try JSONDecoder().decode(Recipe.OuterLayer.self, from: data)
                   completionHandler(recipeData.hits, nil)
                    
                } catch {
                    completionHandler(nil, .badDecoding(error))
                }
            }
        } .resume()
        
    }
}

