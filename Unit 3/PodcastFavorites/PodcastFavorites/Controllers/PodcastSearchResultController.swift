//
//  ViewController.swift
//  PodcastFavorites
//
//  Created by Genesis Mosquera on 1/3/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import UIKit

class PodcastSearchResultController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    private var podcasts = [Podcast]() {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      searchPodcast()
        tableView.dataSource = self
    }
    
    private func searchPodcast() {
        PodcastAPIClient.searchPodcast(keyword: "swift") { (appError, podcasts) in
            if let appError = appError {
                print(appError.errorMessage())
            } else if let podcasts = podcasts {
                print("found \(podcasts.count) podcasts")
                self.podcasts = podcasts
            }
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow,
            let detailViewController = segue.destination as? PodcastDetailViewController else {
                fatalError("indexPath, detail VC nil")
        }
        let podcast = podcasts[indexPath.row]
        detailViewController.podcast = podcast
    }
    
}

extension PodcastSearchResultController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return podcasts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "PodcastCell", for: indexPath)
        let podcast = podcasts[indexPath.row]
        cell.textLabel?.text = podcast.collectionName
        return cell
    }
}
