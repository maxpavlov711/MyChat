//
//  UILabel + Extension.swift
//  MyChat
//
//  Created by Max Pavlov on 26.04.22.
//

import UIKit

extension UILabel {
    
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        
        self.text = text
        self.font = font
    }
}
