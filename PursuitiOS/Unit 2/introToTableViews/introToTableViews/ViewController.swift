//
//  ViewController.swift
//  introToTableViews
//
//  Created by Genesis Mosquera on 11/15/18.
//  Copyright © 2018 Genesis Mosquera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 1. conforming to UI Table View data source
    // 2.number of rows
    // number of cells for row
// 3. set yourself to the data source        myTableView.dataSource = self
    
    let daysOfWeek = ["Monday","Tuesday","Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    let daysOfWeekInternational = [["Monday","Tuesday","Wednesday", "Thursday", "Friday", "Saturday", "Sunday"], ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]]
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    myTableView.delegate = self
        myTableView.dataSource = self
    }


}
// this extension is just for the table view delegate methods
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("section: \(indexPath.section), row: \(indexPath.row)")
    }
}

extension ViewController: UITableViewDataSource {
    // this function sets up how many rows the tableview has, it needs to return that number
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return daysOfWeekInternational[section].count
    }
    // sets up the cell inside the row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // created a cell - get the cell for a specific name at a specific row. Recycles 
        let cell = myTableView.dequeueReusableCell(withIdentifier: "dayCell", for: indexPath)

        //seleceted the appropriate string from my days of the week by using the rows indexpath.row
        let dayToSetUp = daysOfWeekInternational[indexPath.section][indexPath.row]
        // set the cells to display the string chosen
        cell.textLabel?.text = dayToSetUp
        cell.detailTextLabel?.text = "this is in row: \(indexPath.row)"
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return daysOfWeekInternational.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "English"
        case 1:
            return "Spanish"
        default:
            return "Unknown"
        }
    }
}
