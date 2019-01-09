//
//  Article.swift
//  NewsApp
//
//  Created by Genesis Mosquera on 12/10/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation
struct Article: Codable {
    struct OuterLayer: Codable {
        let articles: [Article]
    }
    
    let author: String?
    let title: String
    let description: String?
    let url: String
    let urlToImage: String?
}
