//
//  FirstAnimalViewController.swift
//  Navigation
//
//  Created by Genesis Mosquera on 11/26/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class FirstAnimalViewController: UIViewController {
    
    var allAnimals = [Animal.init(name: "Elephant", image: UIImage.init(named: "elephant")!, animalClass: "Mammal"), Animal.init(name: "Dolphin", image: UIImage.init(named: "dolphin")!, animalClass: "Mammal"), Animal.init(name: "Salamander", image: UIImage.init(named: "salamander")!, animalClass: "Amphibian"), Animal.init(name: "Gecko", image: UIImage.init(named: "gecko")!, animalClass: "Reptile"), Animal.init(name: "Hummingbird", image: UIImage.init(named: "hummie")!, animalClass: "Bird")]


    @IBOutlet weak var animalTableView: UITableView!
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
animalTableView.dataSource = self
        animalTableView.delegate = self
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("WHOA")
    }
}
extension FirstAnimalViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allAnimals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = animalTableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? AnimalCell else {return UITableViewCell()}
        cell.animalName.text = allAnimals[indexPath.row].name
        cell.animalClass.text = allAnimals[indexPath.row].animalClass
        cell.animalPicture.image = allAnimals[indexPath.row].image
//       let animalToShow = allAnimals [indexPath.row]
//        cell.textLabel?.text = animalToShow.name
//        cell.textLabel?.text = allAnimals[indexPath.row].name
        
        return cell
    }
    
    
}
extension  FirstAnimalViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
