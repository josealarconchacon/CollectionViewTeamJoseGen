//
//  Favorite.swift
//  PodcastFavorites
//
//  Created by Genesis Mosquera on 1/3/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import Foundation
// always start with a struct
struct Favorite: Codable {
    let trackId: Int
    let favoritedBy: String
    let collectionName: String
    let artworkUrl600: URL 
}
