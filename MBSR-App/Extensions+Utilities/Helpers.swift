//
//  Helpers.swift
//  MBSR-App
//
//  Created by Jason Modisett on 1/2/19.
//  Copyright © 2019 Benjamin Hakes. All rights reserved.
//

import UIKit

// MARK:- Gradient Helper
func gradient(from color: UIColor, frame: CGRect) -> UIColor {
    return GradientColor(.topToBottom, frame: frame, colors: [color.lighten(byPercentage: 0.1) ?? UIColor.clear, color, color.darken(byPercentage: 0.05) ?? UIColor.clear]).withAlphaComponent(0.8)
}


// MARK:- DispatchQueue Helpers
func background(_ block: @escaping () -> Void) {
    DispatchQueue.global(qos: .userInteractive).async(execute: block)
}

func UI(_ block: @escaping () -> Void) {
    DispatchQueue.main.async(execute: block)
}

// MARK:- Haptic Helpers
func hapticLight() {
    let haptic = UIImpactFeedbackGenerator(style: .light)
    haptic.impactOccurred()
}

func hapticMedium() {
    let haptic = UIImpactFeedbackGenerator(style: .medium)
    haptic.impactOccurred()
}

func hapticHeavy() {
    let haptic = UIImpactFeedbackGenerator(style: .heavy)
    haptic.impactOccurred()
}

func hapticSelection() {
    let haptic = UISelectionFeedbackGenerator()
    haptic.selectionChanged()
}
