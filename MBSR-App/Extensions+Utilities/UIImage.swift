
//
//  UIImage.swift
//  MBSR-App
//
//  Created by Jason Modisett on 1/2/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

import UIKit

extension UIImage {
    
    // Convenience initializer with a color
    public convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }
    
}
