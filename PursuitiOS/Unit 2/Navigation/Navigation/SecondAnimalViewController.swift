//
//  SecondAnimalViewController.swift
//  Navigation
//
//  Created by Genesis Mosquera on 11/26/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class SecondAnimalViewController: UIViewController {

    var dosAnimals = Animal.allAnimals
    
    
    @IBOutlet weak var animalDosTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
animalDosTableView.dataSource = self
animalDosTableView.delegate = self
    }
    
}
extension SecondAnimalViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cellDos = animalDosTableView.dequeueReusableCell(withIdentifier: "animalCell2", for: indexPath) as? AnimalCellDos else {return UITableViewCell()}
     cellDos.animalPicture2.image = dosAnimals[indexPath.row].image
        cellDos.animalName2.text = dosAnimals[indexPath.row].name
        cellDos.animalClass2.text = dosAnimals[indexPath.row].animalClass
        
        return cellDos
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dosAnimals.count
    }
    }
extension SecondAnimalViewController:
UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //gets the storyboard
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
       //
        guard let vc = storyboard.instantiateViewController(withIdentifier: "secondDetail") as? SecondDetailViewController else {return}
        vc.modalPresentationStyle = .overCurrentContext
        vc.animal = dosAnimals[indexPath.row]

        //makes it segue
        present(vc, animated: true, completion: nil)
        
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        print("prep for segue works")
//    }
}
