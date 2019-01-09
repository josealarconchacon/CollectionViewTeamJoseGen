//
//  MovieSearchAPI.swift
//  MovieSearch
//
//  Created by Genesis Mosquera on 12/7/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation
enum MovieAPIError: Error {
    case badUrl(String)
    case networkError(Error)
    case decodingError(Error)
}

// making final since no one else needs to subclass
final class MovieSearchAPI {
    
    // search for a movie by keyword
    static func search(keyword: String, completion: @escaping (MovieAPIError?, [Movie]?) -> Void) {
        // this is the iTunes search movie endpoint
        let urlString = "https://itunes.apple.com/search?media=movie&term=\(keyword)&limit=100"
        guard let url = URL(string: urlString) else {
            completion(MovieAPIError.badUrl("malformatted url"), nil)
            
            return
            
        }
        URLSession.shared.dataTask(with: url) {(data, response, error)
            in
            if let error = error {
                print("search error")
                completion(MovieAPIError.networkError(error), nil)
            }
             else if let data = data {
                do {
                    let searchData = try JSONDecoder().decode(Movie.SearchData.self, from: data)
                completion(nil, searchData.results)
                } catch {
                    completion(MovieAPIError.decodingError(error), nil)
                }
            }
            }.resume() // don’t forget resume()
    }
}
