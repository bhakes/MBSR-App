//
//  WeekOutlineTableViewCell.swift
//  MBSR-App
//
//  Created by Benjamin Hakes on 12/24/18.
//  Copyright © 2018 Benjamin Hakes. All rights reserved.
//

import UIKit

class WeekOutlineTableViewCell: UITableViewCell {

    var type: String?
    var viewedStatus: Int?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        contentIcon.image = contentIcon.image!.withRenderingMode(UIImage.RenderingMode.alwaysTemplate)
        contentIcon.tintColor = UIColor.purple
        checkedIcon.tintColor = UIColor.clear
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var detail: UILabel!
    @IBOutlet weak var contentIcon: UIImageView!
    
    @IBOutlet weak var checkedIcon: UIImageView!
}
