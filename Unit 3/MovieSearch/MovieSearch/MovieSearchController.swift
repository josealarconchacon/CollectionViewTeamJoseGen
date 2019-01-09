//
//  ViewController.swift
//  MovieSearch
//
//  Created by Genesis Mosquera on 12/7/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class MovieSearchController: UIViewController {
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    private var movies = [Movie]() {
        didSet { // property observer
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        searchBar.delegate = self
        searchMovies(keyword: "holiday")
        
        //        MovieSearchAPI.search { (error, movies) in
        //            if let error = error {
        //                print("error: \(error)")
        //            } else if let movies = movies {
        //                print("there are \(movies.count) movies")
        //                // after setting movies, didSet fets called
        //                // tableView reloads
        //                self.movies = movies
        //            }
        //        }
        
        
    }
    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        // create an ok action to dismiss the alert
        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        
        
        //add okAction to alertController
        
        alertController.addAction(okAction)
        
       // present the alertController
        present(alertController, animated: true, completion: nil)
    }
    private func searchMovies(keyword: String) {
        guard let encodedKeyword = keyword.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
            else { return }
        MovieSearchAPI.search(keyword: encodedKeyword) { (error, movies) in
            if let error = error {
                // background thread
                DispatchQueue.main.async {
                    self.showAlert(title: "Error", message: "\(error.localizedDescription)")
                }
            } else if let movies = movies {
                self.movies = movies
            }
        }
    }
}

extension MovieSearchController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        let movie = movies[indexPath.row]
        cell.textLabel?.text = movie.trackName
        if let description = movie.longDescription {
            cell.detailTextLabel?.text = description
        }
        // image processing
        // needs to be on a background thread
            DispatchQueue.global().async {
                do {
                     let imageData = try Data(contentsOf: movie.artworkUrl100)
                    DispatchQueue.main.async {
                        cell.imageView?.image = UIImage(data: imageData)
                    }
                } catch {
                    print ("contents of url error: \(error)")
                }
       
            }
            
            // need to dispatch back to the main thread
            //create an image from the data
        
        return cell
    }
}

extension MovieSearchController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let searchText = searchBar.text else { return }
        searchMovies(keyword: searchText)
}
}
