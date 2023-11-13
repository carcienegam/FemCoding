//
//  ContentViewModel.swift
//  UsInStemChatBot
//
//  Created by user248068 on 11/9/23.
//

import SwiftUI
import ChatGPTSwift

@MainActor
class ContentViewModel: ObservableObject {
    let api = ChatGPTAPI(apiKey: "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")
    
    @Published var message = ""
    @Published var chatMessages = [ChatMessage]()
    @Published var isWaitingForResponse = false
    
    func sendMessage() async throws {
        let userMessage = ChatMessage(message)
        chatMessages.append(userMessage)
        isWaitingForResponse = true
        
        let assistantMessage = ChatMessage(owner: .assistant, "")
        chatMessages.append(assistantMessage)
        
        let stream = try await api.sendMessageStream(text: message)
        message = ""
        for try await line in stream {
            if let lastMessage = chatMessages.last {
                let text = lastMessage.text
                let newMessage = ChatMessage(owner: .assistant, text + line)
                chatMessages[chatMessages.count - 1] = newMessage
            }
        }
        
        isWaitingForResponse = false
    }
}
