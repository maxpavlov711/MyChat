//
//  SelfConfiguringCell.swift
//  MyChat
//
//  Created by Max Pavlov on 1.05.22.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure(with value: MChat)
}
