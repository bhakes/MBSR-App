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
    
    // Setup function
    private func setup() {
        navigationBar.prefersLargeTitles = true
        
        navigationBar.shadowImage = UIImage()
        navigationBar.backgroundColor = UIColor.white
        
        navigationBar.layer.shadowRadius = 12
        navigationBar.layer.shadowOpacity = 0.15
    }
    
}
