//
//  WaitingChatNavigation.swift
//  MyChat
//
//  Created by Max Pavlov on 24.05.22.
//

import Foundation

protocol WaitingChatNavigation: AnyObject {
    func removeWaitingChat(chat: MChat)
    func changeToActive(chat: MChat)
}
