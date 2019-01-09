//
//  ViewController.swift
//  NewsApp
//
//  Created by Genesis Mosquera on 12/10/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var articles = [Article]() { didSet {
        DispatchQueue.main.async {
            self.newsTableView.reloadData()
        }
        }
    }
    
    @IBOutlet weak var newsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newsTableView.dataSource = self 
        NewsAPIClient.getAllNews { (articles, error) in
            if let articles = articles {
                self.articles = articles 
            }
            if let error = error {
                print(error)
            }
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = newsTableView.dequeueReusableCell(withIdentifier: "newsCell", for: indexPath)
        let articleToSet = articles[indexPath.row]
        cell.textLabel?.text = articleToSet.title
        if let author = articleToSet.author {
            cell.detailTextLabel?.text = author
        } else {
            cell.detailTextLabel?.text = "No Author"
        }
        if let imageUrl = articleToSet.urlToImage {
            if let image = ImageClient.getImage(stringURL: imageUrl) {
            cell.imageView?.image = image
    }
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
}
