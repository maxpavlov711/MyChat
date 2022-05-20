//
//  MMessage.swift
//  MyChat
//
//  Created by Max Pavlov on 20.05.22.
//

import UIKit

struct MMessage: Hashable {
    let content: String
    let senderId: String
    let senderUserName: String
    var sentDate: Date
    let id: String?
    
    init(user: MUser, content: String) {
        self.content = content
        senderId = user.id
        senderUserName = user.username
        sentDate = Date()
        id = nil
    }
    
    var representation: [String: Any] {
        let rep: [String: Any] = [
            "created": sentDate,
            "senderId": senderId,
            "senderName": senderUserName,
            "content": content
        ]
        return rep
    }
}
