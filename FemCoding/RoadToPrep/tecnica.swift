//
//  conductual.swift
//  FemCoding
//
//  Created by Alumno on 14/11/23.
//

import SwiftUI

struct tecnica: View {
    @State private var messages2: [Message2] = []
    @State private var answer: String = ""
    @State private var showYesNoButtons = true
    @State private var showTecOnly = false
    @StateObject var vm2 = selectedmanager2()
    var body: some View {
        ScrollView {
            
            VStack {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
                VStack(spacing: 4) {
                    Text("AI Bot")
                        .font(.title3)
                        .fontWeight(.semibold)
                    Text("Messenger")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    ForEach(messages2, id: \.id) { message in
                        MessageView2(message2: message)
                    }
                }
                
                
                .padding()
                
                if showYesNoButtons {
                    HStack {
                        Button(action: { respondToQuestion(with: "Si") }) {
                            Text("Si")
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.green)
                                .cornerRadius(8)
                        }
                        
                        Button(action: { respondToQuestion(with: "No") }) {
                            Text("No")
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.red)
                                .cornerRadius(8)
                        }
                    }
                    .padding()
                } else {
                    HStack {
                        TextField("Escribe tu respuesta...", text: $answer)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal)
                        
                        Button(action: sendMessage) {
                            Text("Enviar")
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(8)
                        }
                    }
                    .padding()
                }
            }
        }
        .navigationBarTitle("Chat with AI")
        .onAppear {
            messages2.append(Message2(text: "¿Puedes explicar la complejidad del tiempo en los algoritmos?", isUser: false))
        }
    }





func sendMessage() {
messages2.append(Message2(text: answer, isUser: true))
messages2.append(Message2(text: "¡Excelente! Ahora bien, ¿qué es la notación BigO?", isUser: false))
answer = ""
showYesNoButtons = false
}

func respondToQuestion(with response: String) {
messages2.append(Message2(text: response, isUser: true))
let aiResponse = response == "Si" ? "¡Impresionante! Cuéntame más." : "No te preocupes. Si tienes alguna pregunta, sientase con libertad de preguntar."
messages2.append(Message2(text: aiResponse, isUser: false))
showYesNoButtons = false
}

}
struct Message2: Identifiable {
let id = UUID()
let text: String
let isUser: Bool
}

struct MessageView2: View {
let message2: Message2

var body: some View {
HStack {
    if message2.isUser {
        Spacer()
        Text(message2.text)
            .padding(10)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
    } else {
        Text(message2.text)
            .padding(10)
            .background(Color.gray)
            .foregroundColor(.white)
            .cornerRadius(8)
        Spacer()
    }
}
}
}

struct tecnica_Previews: PreviewProvider {
static var previews: some View {
tecnica()
}
}

