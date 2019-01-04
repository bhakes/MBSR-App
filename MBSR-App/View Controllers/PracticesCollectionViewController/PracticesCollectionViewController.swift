//
//  PracticesCollectionViewController.swift
//  MBSR-App
//
//  Created by Benjamin Hakes on 1/3/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

import UIKit

class PracticesCollectionViewController: UICollectionViewController {
    
    // MARK:- View lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(UINib(nibName: "PracticesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "practicesCell")
    }
    
    
    // MARK:- UICollectionViewDataSource
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MSBRContent.shared.practices.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PracticesCollectionViewCell.reuseIdentifier, for: indexPath) as! PracticesCollectionViewCell
        
        if let textLabelString = MSBRContent.shared.practices[indexPath.row]["title"] as? String {
            cell.titleLabel.text = textLabelString
        }
        
        if let image = MSBRContent.shared.practices[indexPath.row]["image"] as? String {
            cell.imageView.image = UIImage(named: image)
        }
        
        return cell
    }
    
    
    // MARK:- UICollectionViewDelegate
    
}
