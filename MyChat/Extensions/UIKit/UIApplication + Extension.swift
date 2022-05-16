//
//  UIApplication + Extension.swift
//  MyChat
//
//  Created by Max Pavlov on 16.05.22.
//

import UIKit

extension UIApplication {
    
    class func getTopViewController(base: UIViewController? =
                                    UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        
        if let nav = base as? UINavigationController {
            return getTopViewController(base: nav.visibleViewController)
            
        } else if let tab = base as? UITabBarController, let selected = tab.selectedViewController {
            return getTopViewController(base: selected)
            
        } else if let presented = base?.presentingViewController {
            return getTopViewController(base: presented)
        }
        return base
    }
}
