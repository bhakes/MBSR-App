//
//  JournalTableViewController.swift
//  MBSR-App
//
//  Created by Benjamin Hakes on 1/2/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

import UIKit

class JournalTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        var rowCount = 0
        
        if section == 0 {
            rowCount = 1
        } else {
            rowCount = 7
        }
        
        return rowCount
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "journalCell", for: indexPath) as? JournalTableViewCell else {fatalError("could not dequeue Journal cell")}
        let cell = UITableViewCell()
        
        if indexPath.section == 0 {
            cell.textLabel?.text = "Weeks 1-7 - Formal Practice Log"
        } else {
            cell.textLabel?.text = " Week \(indexPath.row + 1) - \(MSBRContent.InformalPractices.allCases[indexPath.row].rawValue)"
        }
        // Configure the cell...

        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Formal"
        default:
            return "Informal"
        }
    }
    
    // ADDED THIS METHOD TO RUN WHEN CELL IS SELECTED
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // deselect row
        tableView.deselectRow(at: indexPath, animated: true)
        // removed segue in storyboard from cell and created new segue from this VC to detail VC
        // named new segue "ShowJournalDetails" in the storyboard
        // perform segue with identifier
        performSegue(withIdentifier: "ShowJournalDetail", sender: self)
        // then the below code runs
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let destVC = segue.destination as? JournalDetailViewController else { return }
        
        destVC.title = "Week \(String(indexPath.row + 1))"
        
    }

}
