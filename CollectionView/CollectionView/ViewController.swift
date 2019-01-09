//
//  ViewController.swift
//  CollectionView
//
//  Created by Genesis Mosquera on 1/9/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var myImages = [String](){
        didSet {
            DispatchQueue.main.async {
                self.dogCollectionView.reloadData()
            }
        }
    }
    
    
    @IBOutlet weak var dogCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dogCollectionView.dataSource = self
        dogCollectionView.delegate = self
        
        guard let url = URL.init(string: "https://dog.ceo/api/breeds/image/random/10") else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data {
                do {
                    self.myImages = try JSONDecoder().decode(DogImages.self, from: data).message
                } catch {
                    print(error)
                }
            }
            if let error = error {
                print(error)
            }
            }.resume()
    }
    
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DogCell", for: indexPath) as? DogCell else { return
            UICollectionViewCell() }
        guard let url = URL.init(string: myImages[indexPath.row]) else { return UICollectionViewCell() }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data {
                DispatchQueue.main.async {
                cell.dogImageView.image = UIImage.init(data: data)
            }
            }
        }.resume()
        
        return cell
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: 400, height: 400)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("doing it")
    }
    
    
}
