//
//  ChatView.swift
//  FemCoding
//
//  Created by user248068 on 11/12/23.
//

import SwiftUI

struct ChatView: View {
    
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            VStack {
                Circle()
                    .fill(Color("AccentColor"))
                    .frame(width: 50, height: 50)
                VStack(spacing: 4) {
                    Text("Mantor-IA")
                        .font(.title3)
                        .fontWeight(.semibold)
                    Text("¡Aquí para ayudarte!")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
            ScrollViewReader { proxy in
                ScrollView {
                    LazyVStack(spacing: 16) {
                        ForEach(viewModel.chatMessages) { message in messageView(message)
                            
                        }
                        Color.clear
                            .frame(height: 1)
                            .id("bottom")
                    }
                }
                .onReceive(viewModel.$chatMessages.throttle(for: 0.5, scheduler: RunLoop.main, latest: true)) { chatMessages in guard !chatMessages.isEmpty else { return }
                    withAnimation {
                        proxy.scrollTo("option")
                    }
                }
            }
            
            HStack {
                TextField("Mensaje...", text: $viewModel.message, axis: .vertical)
                    .textFieldStyle(.roundedBorder)
                if viewModel.isWaitingForResponse {
                    ProgressView()
                        .padding()
                } else {
                    Button("Enviar") {
                        sendMessage()
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
            .padding()
        }
    }
    
    func messageView(_ message: ChatMessage) -> some View {
        HStack{
            if message.owner == .user {
                Spacer(minLength: 60)
            }
            
            if !message.text.isEmpty {
                VStack{
                    Text(message.text)
                        .foregroundColor(message.owner == .user ? .white : .black)
                        .padding(12)
                        .background(message.owner == .user ? Color("AccentColor") : .gray.opacity(0.1))
                        .cornerRadius(16)
                        .overlay(alignment: message.owner == .user ? .topTrailing : .topLeading) {
                            Text(message.owner.rawValue.capitalized)
                                .foregroundColor(.gray)
                                .font(.caption)
                                .offset(y: -16)
                        }
                }
            }
            
            if message.owner == .assistant {
                Spacer(minLength: 60)
            }
        }
        .padding(.horizontal)
    }
    
    func sendMessage(){
        Task {
            do {
                try await viewModel.sendMessage()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
