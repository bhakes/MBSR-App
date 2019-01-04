//
//  NavigationController.swift
//  MBSR-App
//
//  Created by Jason Modisett on 1/3/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    // Setup method
    private func setup() {
        navigationBar.prefersLargeTitles = true
        
        navigationBar.isTranslucent = true
        navigationBar.barTintColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.99)
        
        navigationBar.shadowImage = UIImage()
        //navigationBar.backgroundColor = UIColor.white
        
        navigationBar.layer.shadowRadius = 14
        navigationBar.layer.shadowOpacity = 0.24
    }
    
}
