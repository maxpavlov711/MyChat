//
//  UIStackView + Extension.swift
//  MyChat
//
//  Created by Max Pavlov on 26.04.22.
//

import UIKit

extension UIStackView {
    
    convenience init(arrangedSubviews: [UIView], axix: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axix
        self.spacing = spacing
    }
}
