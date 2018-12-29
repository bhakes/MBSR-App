//
//  WeekDetailViewController.swift
//  MBSR-App
//
//  Created by Benjamin Hakes on 12/19/18.
//  Copyright © 2018 Benjamin Hakes. All rights reserved.
//

import UIKit
import SafariServices

class WeekDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var weekOutlineTableView: WeekOutlineTableView!
    var weekNumber: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weekOutlineTableView.dataSource = self
        weekOutlineTableView.delegate = self
        // Do any additional setup after loading the view.
        weekOutlineTableView.reloadData()
    }
    
    func onLoadOfTableView(fromTable tableView: WeekOutlineTableView){
        tableView.reloadData()
    }
    
    
    // MARK: Tableview

    func numberOfSections(in tableView: UITableView) -> Int {

        guard let weekNumber = weekNumber else {fatalError("couldn't get week number of rows 1")}
        guard let content = MSBRContent.shared.content["\(weekNumber)"] else {fatalError("couldn't get week number of rows 2")}
        
        return content.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        guard let weekNumber = weekNumber else {fatalError("couldn't get week number of rows 1")}
        guard let content = MSBRContent.shared.content["\(weekNumber)"] else {fatalError("couldn't get week number of rows 2")}
        let numberOfRows = content[section].count
    
        return numberOfRows
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Videos"
        case 1:
            return "Reading"
        default:
            return "Supplementary"
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weekOutlineCell", for: indexPath)
        
    
        guard let weekNumber = weekNumber else {fatalError("couldn't get week number of rows 1")}
        guard let content2 = MSBRContent.shared.content["\(weekNumber)"] else {fatalError("couldn't get week number of rows 2")}
        let content = content2[indexPath.section]
        
        cell.textLabel?.text =
            content[indexPath.row]["title"] as? String

        if let detailText = content[indexPath.row]["length"] {
            cell.detailTextLabel?.text = "\(detailText) mins"
        } else if let detailText = content[indexPath.row]["estimatedReadingTime"]{
            cell.detailTextLabel?.text = "~\(detailText) mins"
        } else {
            cell.detailTextLabel?.text = ""
        }

        // Configure the cell...

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        guard let weekNumber = weekNumber else {fatalError("couldn't get week number of rows 1")}
        guard let content2 = MSBRContent.shared.content["\(weekNumber)"] else {fatalError("couldn't get week number of rows 2")}
        let content = content2[indexPath.section]
        
        guard let strURlToOpen = content[indexPath.row]["url"] as? String else { return }
        guard let url = URL(string: strURlToOpen) else { return }
        let svc = SFSafariViewController(url: url)
        present(svc, animated: true, completion: nil)
        
    }

}
