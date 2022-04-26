//
//  UIImageView + Extension.swift
//  MyChat
//
//  Created by Max Pavlov on 26.04.22.
//

import UIKit

extension UIImageView {
    
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.contentMode = contentMode
    }
}
