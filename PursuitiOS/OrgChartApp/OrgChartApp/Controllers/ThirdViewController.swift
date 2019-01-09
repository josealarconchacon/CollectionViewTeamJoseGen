//
//  ThirdViewController.swift
//  OrgChartApp
//
//  Created by Genesis Mosquera on 12/20/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var persons = [Person]() { didSet {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
        }
    }
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        OrgAPIClient.getAllNames { (names, error) in
            if let names = names {
                self.names = names
            }
            if let error = error {
                print(error)
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("third option")
    }
}
extension ThirdViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrgCell", for: indexPath)
        let peopleToSet = persons[indexPath.row]
        cell.textLabel?.text = [Person]
        if let titles = peopleToSet.results {// should be title
    cell.detailTextLabel?.text = titles
        } else {
            cell.detailTextLabel?.text = "New Hire"
        }
        return cell
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
}
