//
//  NewsAPIClient.swift
//  NewsApp
//
//  Created by Genesis Mosquera on 12/10/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation
import UIKit

enum AppError {
    case badURL(String)
    case badData(Error)
    case badDecoding(Error)
}

final class NewsAPIClient {
    static func getAllNews(completionHandler: @escaping (([Article]?, AppError?) -> Void)) {
guard let url = URL.init(string: "https://newsapi.org/v2/top-headlines?country=us") else {
    completionHandler(nil, .badURL("url is not working"))
    return
        }
// creating a url request using a url to initialize
var urlRequest = URLRequest.init(url: url)
urlRequest.addValue("fd40910d7ab54fd6827a893c9b7f3835", forHTTPHeaderField: "Authorization")

URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
    if let data = data {
        do {
            let newsData = try JSONDecoder().decode(Article.OuterLayer.self, from: data)
            completionHandler(newsData.articles, nil)
        } catch {
            completionHandler(nil, .badDecoding(error))
        }
        print("we have data!")
    }
    }.resume()
}

}

final class ImageClient {
    static func getImage (stringURL: String) -> UIImage? {
        guard let myImageURL = URL.init(string: stringURL) else {
            return nil
        }
        do {
        let data = try Data.init(contentsOf: myImageURL )
            guard let image = UIImage.init(data: data) else { return nil}
            return image 
    } catch {
    print(error)
    return nil
    }
    }
}
