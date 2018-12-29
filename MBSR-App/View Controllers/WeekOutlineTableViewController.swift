//
//  WeekOutlineTableViewController.swift
//  MBSR-App
//
//  Created by Benjamin Hakes on 12/20/18.
//  Copyright © 2018 Benjamin Hakes. All rights reserved.
//

import UIKit
import Foundation


class WeekOutlineTableView: UITableView {

    var weekNumber: Int = 0
    
    // Get JSON Data
    
    
    
    
//    if let path = Bundle.main.path(forResource: "data", ofType: "json") {
//        do {
//            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
//            let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
//            if let jsonResult = jsonResult as? Dictionary<String, AnyObject>, let person = jsonResult["person"] as? [Any] {
//                // do stuff
//            }
//        } catch {
//            // handle error
//        }
//    }
    

    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        
        // #warning Incomplete implementation, return the number of sections
        return MSBRContent.shared.content.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return MSBRContent.shared.content[0].count
        case 1:
            return MSBRContent.shared.content[1].count
        default:
            return MSBRContent.shared.content[2].count
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Videos"
        case 1:
            return "Reading"
        default:
            return "Articles"
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "outlineCell", for: indexPath)
        
        cell.textLabel?.text = MSBRContent.shared.content[indexPath.section][indexPath.row]["title"] as? String
        
        if let detailText = MSBRContent.shared.content[indexPath.section][indexPath.row]["length"] {
            cell.detailTextLabel?.text = "\(detailText) mins"
        } else if let detailText = MSBRContent.shared.content[indexPath.section][indexPath.row]["estimatedReadingTime"]{
            cell.detailTextLabel?.text = "~\(detailText) mins"
        } else {
            cell.detailTextLabel?.text = ""
        }
        
        // Configure the cell...

        return cell
    }
}
