//
//  DogCell.swift
//  CollectionView
//
//  Created by Genesis Mosquera on 1/9/19.
//  Copyright © 2019 Genesis Mosquera. All rights reserved.
//

import UIKit

class DogCell: UICollectionViewCell {
    @IBOutlet weak var dogImageView: UIImageView!
    
    override func prepareForReuse() {
        dogImageView.image = nil
        
    }
    
    
}
