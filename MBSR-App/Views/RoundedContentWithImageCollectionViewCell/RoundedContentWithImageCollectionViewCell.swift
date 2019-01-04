//
//  RoundedContentWithImageCollectionViewCell.swift
//  MBSR-App
//
//  Created by Jason Modisett on 1/4/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

import UIKit

class RoundedContentWithImageCollectionViewCell: UICollectionViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        updateViews()
    }
    
    // Private setup method
    private func updateViews() {
        roundedGradientView.layer.cornerRadius = cornerRadius
        roundedGradientView.backgroundColor = gradient(from: gradientPrimaryColor, frame: self.frame)
        label.setTitleColor(.white, for: .normal)
    }
    
    private func updateLabel() {
        label.setTitle(labelText, for: .normal)
    }
    
    // Types
    static let reuseIdentifier = "RoundedContentWithImage"
    
    // Properties
    var cornerRadius: CGFloat = 12.0 { didSet { updateViews() }}
    var gradientPrimaryColor: UIColor = RandomFlatColorWithShade(.light) { didSet { updateViews() }}
    var labelText: String = "Label text" { didSet { updateLabel() }}
    
    // IBOutlets
    @IBOutlet weak var roundedGradientView: UIView!
    @IBOutlet weak var label: UIButton!
    
}
