//
//  AuthNavigationDelegate.swift
//  MyChat
//
//  Created by Max Pavlov on 14.05.22.
//

import Foundation

protocol AuthNavigationDelegate: AnyObject {
    func toLoginVC()
    func toSingUpVC()
}
