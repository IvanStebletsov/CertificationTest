//
//  Extantions.swift
//  AppleDevelopmentTest
//
//  Created by Ivan Stebletsov on 08/12/2018.
//  Copyright © 2018 Ivan Stebletsov. All rights reserved.
//

import UIKit

// MARK: - Extentions for UIView

extension UIView {
    
    func setGradientBackground(ColorOne: UIColor, ColorTwo: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [ColorOne.cgColor, ColorTwo.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
    
}

// MARK: - Extentions for UIImageView

extension UIImageView {
    func setShadow() {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 5
        self.clipsToBounds = false
    }
}

// MARK: - Extentions for UIButton

extension UIButton {
    func setShadowAndRadius() {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 10
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 2, height: 2)
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 5
        self.clipsToBounds = false
    }
    
    func isInvisible(bool: Bool) {
        switch bool {
        case true:
            self.isEnabled = !bool
            self.backgroundColor = UIColor.clear
            self.setTitle("", for: .normal)
        case false:
            self.isEnabled = !bool
            self.backgroundColor = Colors.xcodeLightGray
        }
    }
}
