//
//  UIButton + Extension.swift
//  MyChat
//
//  Created by Max Pavlov on 26.04.22.
//

import UIKit

extension UIButton {
    
    convenience init(title: String,
                     titleColor: UIColor,
                     backgroundColor: UIColor,
                     font: UIFont? = .avenir20(),
                     isShodow: Bool = false,
                     cornerRadius: CGFloat = 4) {
        self.init(type: .system)
        
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.titleLabel?.font = font
        
        self.layer.cornerRadius = cornerRadius
        
        if isShodow {
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowRadius = 4
            self.layer.shadowOpacity = 0.2
            self.layer.shadowOffset = CGSize(width: 0, height: 4)
        }
    }
}