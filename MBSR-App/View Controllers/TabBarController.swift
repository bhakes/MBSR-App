//
//  TabBarController.swift
//  MBSR-App
//
//  Created by Jason Modisett on 1/2/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    // Setup function
    private func setup() {
        tabBar.shadowImage = UIImage()
        tabBar.backgroundImage = UIImage.init(color: UIColor.white)
        
        tabBar.isTranslucent = false
        
        tabBar.layer.shadowRadius = 10
        tabBar.layer.shadowOpacity = 0.18
    }
    
}
