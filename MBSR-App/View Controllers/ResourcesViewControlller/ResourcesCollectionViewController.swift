//
//  ResourcesCollectionViewController.swift
//  MBSR-App
//
//  Created by Benjamin Hakes on 1/3/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

import UIKit
import SafariServices

class ResourcesCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    // MARK:- View lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.contentInset = UIEdgeInsets(top: 10, left: 8, bottom: 16, right: 8)
        collectionView.register(UINib(nibName: "RoundedContentWithImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "RoundedContentWithImage")
        self.title = "Resources"
    }
    
    
    // MARK:- UICollectionViewDataSource
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MSBRContent.shared.resources.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RoundedContentWithImageCollectionViewCell.reuseIdentifier, for: indexPath) as? RoundedContentWithImageCollectionViewCell else { return UICollectionViewCell() }
        
        // set delegate
        
        // format cell
        let resource = MSBRContent.shared.resources[indexPath.row]
        
        cell.labelText = resource.title
        cell.gradientPrimaryColor = resource.resourceColor
        
        //        if let image = MSBRContent.shared.resources[indexPath.row]["image"] as? String {
        //            cell.imageView.image = UIImage(named: image)
        //        }
        
        return cell
    }
    
    // MARK: - Collection View Delegate Methods

    
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
    
    // Mark: - Helper Methods
    
    func linkToURL(with url: URL) {
        
        let svc = SFSafariViewController(url: url)
        present(svc, animated: true, completion: nil)
        
    }
    
}

