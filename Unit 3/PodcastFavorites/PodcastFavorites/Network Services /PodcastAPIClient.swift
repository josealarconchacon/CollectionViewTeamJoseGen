//
//  PodcastAPIClient.swift
//  PodcastFavorites
//
//  Created by Genesis Mosquera on 1/3/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import Foundation

// upload task and JSON encoder go hand in hand, sending something up- to the server
// data task is regular GET Request
// shared is a singleton


final class PodcastAPIClient {
    // getting podcast from the iTunes Search API
    static func searchPodcast(keyword: String, completionHandler: @escaping (AppError?, [Podcast]?) -> Void) {
        // query the iTunes Search API for the podcast
        NetworkHelper.shared.performDataTask(endpointURLString: "https://itunes.apple.com/search?media=podcast&limit=200&term=\(keyword)", httpMethod: "GET", httpBody: nil) { (appError, data, httpResponse) in
            if let appError = appError {
                completionHandler(appError, nil)
            }
            guard let response = httpResponse,
                (200...299).contains(response.statusCode) else {
                    let statusCode = httpResponse?.statusCode ?? -999
                    completionHandler(AppError.badStatusCode(String(statusCode)), nil)
                    return
            }
            if let data = data {
                do {
                    let podcastData = try JSONDecoder().decode(PodcastData.self, from: data)
                    completionHandler(nil, podcastData.results)
                } catch {
                    completionHandler(AppError.decodingError(error), nil)
                }
            }
            
        }
    }
    // uploading json data to the network api
    static func favoritePodcast(data: Data, completionHandler: @escaping (AppError?, Bool) -> Void) {
        NetworkHelper.shared.performUploadTask(endpointURLString: "https://5c2e2a592fffe80014bd6904.mockapi.io/api/v1/favorites", httpMethod: "POST", httpBody: data) { (appError, data, httpResponse) in
            if let appError = appError {
                completionHandler(appError, false)
            }
            guard let response = httpResponse,
                (200...299).contains(response.statusCode) else {
                    let statusCode = httpResponse?.statusCode ?? -999
                    completionHandler(AppError.badStatusCode(String(statusCode)), false)
                    return
            }
            if let _ = data {
                completionHandler(nil, true)
            }
        }
    }
}
