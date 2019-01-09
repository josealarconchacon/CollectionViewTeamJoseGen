//
//  Model.swift
//  MovieSearch
//
//  Created by Genesis Mosquera on 12/7/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import Foundation

struct Movie: Codable {
    struct SearchData: Codable {
        let resultCount: Int
        let results: [Movie]
    }
    struct Picture: Codable {
        let largeImage: URL
        let mediumImage: URL
    }
    
    let collectionId: Int?
    let trackId: Int
    let artistName: String
    let trackName: String
    let artworkUrl100: URL
    let longDescription: String?
}
