//
//  ChatMessage.swift
//  UsInStemChatBot
//
//  Created by user248068 on 11/9/23.
//

import SwiftUI

struct ChatMessage: Identifiable {
    var id = UUID().uuidString
    var owner: MessageOwner
    var text: String
    
    init(owner: MessageOwner = .user, _ text: String) {
        self.owner = owner
        self.text = text
    }
}
