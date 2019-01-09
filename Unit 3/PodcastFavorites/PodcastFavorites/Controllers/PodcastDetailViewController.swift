//
//  PodcastDetailViewController.swift
//  PodcastFavorites
//
//  Created by Genesis Mosquera on 1/3/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import UIKit

class PodcastDetailViewController: UIViewController {
    
    @IBOutlet weak var favoriteButton: UIBarButtonItem!
    
    public var podcast: Podcast!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = podcast.collectionName
    }
    
    @IBAction func addToFavorites(_ sender: UIBarButtonItem) {
        // required paramenters for favoriting
        // trackID, favoritedBy, collectionName, artworkUrl600
        let favorite = Favorite.init(trackId: podcast.trackId, favoritedBy: "Genesis M", collectionName: podcast.collectionName, artworkUrl600: podcast.artworkUrl600)
        // encode the favorite object as Data to send to the API
        // using JSONEncoder to get data
        do {
            let data = try JSONEncoder().encode(favorite)
            PodcastAPIClient.favoritePodcast(data: data) { (appError, success) in
                if let appError = appError {
                    print(appError.errorMessage())
                } else if success {
                    print("successfully favorited podcast")
                } else {
                    print("was not favorited")
                }
            }
        } catch {
            print("encoding error: \(error)")
        }
    }
}
