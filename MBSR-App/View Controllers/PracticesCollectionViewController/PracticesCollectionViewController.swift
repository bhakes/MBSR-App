//
//  PracticesCollectionViewController.swift
//  MBSR-App
//
//  Created by Benjamin Hakes on 1/3/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

import UIKit

class PracticesCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    // MARK:- View lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.contentInset = UIEdgeInsets(top: 10, left: 8, bottom: 16, right: 8)
        collectionView.register(UINib(nibName: "RoundedContentWithImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "RoundedContentWithImage")
    }
    
    
    // MARK:- UICollectionViewDataSource
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MSBRContent.shared.practices.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RoundedContentWithImageCollectionViewCell.reuseIdentifier, for: indexPath) as? RoundedContentWithImageCollectionViewCell else { return UICollectionViewCell() }
        
        let practice = MSBRContent.shared.practices[indexPath.row]
        cell.labelText = practice.title
        cell.gradientPrimaryColor = practice.contentColor

//        if let image = MSBRContent.shared.practices[indexPath.row]["image"] as? String {
//            cell.imageView.image = UIImage(named: image)
//        }
        
        return cell
    }
    
    
    // MARK:- DelegateFlowLayout methods
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemWidth = collectionView.frame.width / 2.1
        let itemHeight = itemWidth
        return CGSize(width: itemWidth, height: itemHeight)
    }
}
