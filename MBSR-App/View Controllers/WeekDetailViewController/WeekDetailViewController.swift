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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        weekOutlineTableView.reloadData()
    }
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "weekOutlineCell", for: indexPath) as? WeekOutlineTableViewCell else {fatalError("Couldn't dequeue cell as WeekOutlineTableViewCell")}
        
    
        guard let weekNumber = weekNumber else {fatalError("couldn't get week number of rows 1")}
        guard let content2 = MSBRContent.shared.content["\(weekNumber)"] else {fatalError("couldn't get week number of rows 2")}
        let content = content2[indexPath.section]
        
        cell.title?.text =
            content[indexPath.row]["title"] as? String
        
        cell.type =
            content[indexPath.row]["type"] as? String
        cell.viewedStatus = content[indexPath.row]["viewed"] as? Int

        if let type = cell.type {
            
            switch type{
            case "article":
                cell.contentIcon.image = UIImage(named: "document")
                cell.contentIcon.image = cell.contentIcon.image!.withRenderingMode(UIImage.RenderingMode.alwaysTemplate)
                cell.contentIcon.tintColor = UIColor.purple
            case "book":
                cell.contentIcon.image = UIImage(named: "book")
                cell.contentIcon.image = cell.contentIcon.image!.withRenderingMode(UIImage.RenderingMode.alwaysTemplate)
                cell.contentIcon.tintColor = UIColor.purple
            default:
                break
            }
            
        } else {fatalError("Could not get type")}
            
        if cell.viewedStatus == 1 {
            cell.checkedIcon.image = cell.checkedIcon.image!.withRenderingMode(UIImage.RenderingMode.alwaysTemplate)
            cell.checkedIcon.tintColor = UIColor.green
        } else {
            cell.checkedIcon.image = cell.checkedIcon.image!.withRenderingMode(UIImage.RenderingMode.alwaysTemplate)
            cell.checkedIcon.tintColor = UIColor.clear
        }

        if let detail = content[indexPath.row]["length"] {
            cell.detail?.text = "\(detail) mins"
        } else if let detail = content[indexPath.row]["estimatedReadingTime"]{
            cell.detail.text = "~\(detail) mins"
        } else {
            cell.detail.text = ""
        }

        // Configure the cell...

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        guard let weekNumber = weekNumber else {fatalError("couldn't get week number of rows 1")}
        guard var content2 = MSBRContent.shared.content["\(weekNumber)"] else {fatalError("couldn't get week number of rows 2")}
        var content = content2[indexPath.section]
        
        MSBRContent.shared.updateViewStatus(week: String(weekNumber), section: indexPath.section, row: indexPath.row)
        
        guard let strURlToOpen = content[indexPath.row]["url"] as? String else { return }
        guard let url = URL(string: strURlToOpen) else { return }
        let svc = SFSafariViewController(url: url)
        present(svc, animated: true, completion: nil)
        
    }

}
