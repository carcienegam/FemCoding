import SwiftUI

struct Entrevistas: View {
    @State private var messages: [Message] = []
    @State private var answer: String = ""
    @State private var showYesNoButtons = true
    @State private var showTecOnly = false
    @StateObject var vm2 = selectedmanager2()

    var body: some View {
        VStack {
            TabMentoria(showTecOnly: $showTecOnly)
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
                        ForEach(messages, id: \.id) { message in
                            MessageView(message: message)
                        }
                    }
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
        .onChange(of: vm2.selected) { newSelectedValue in
            showTecOnly = newSelectedValue == .cond
        }
        .navigationBarTitle("Chat with AI")
        .onAppear {
            showTecOnly ?
            messages.append(Message(text: "¿Puedes explicar la complejidad del tiempo en los algoritmos?", isUser: false)) :
            messages.append(Message(text: "¿Cuál ha sido una ocasión en la que demostraste habilidades de liderazgo?", isUser: false))
        }
    }

    func sendMessage() {
        messages.append(Message(text: answer, isUser: true))
        messages.append(Message(text: "¡Excelente! Ahora bien, ¿qué es la notación BigO?", isUser: false))
        answer = ""
        showYesNoButtons = false
    }

    func respondToQuestion(with response: String) {
        messages.append(Message(text: response, isUser: true))
        let aiResponse = response == "Si" ? "¡Impresionante! Cuéntame más." : "No te preocupes. Si tienes alguna pregunta, sientase con libertad de preguntar."
        messages.append(Message(text: aiResponse, isUser: false))
        showYesNoButtons = false
    }
}

struct Message: Identifiable {
    let id = UUID()
    let text: String
    let isUser: Bool
}

struct MessageView: View {
    let message: Message

    var body: some View {
        HStack {
            if message.isUser {
                Spacer()
                Text(message.text)
                    .padding(10)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            } else {
                Text(message.text)
                    .padding(10)
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                Spacer()
            }
        }
    }
}

struct Entrevistas_Previews: PreviewProvider {
    static var previews: some View {
        Entrevistas()
    }
}

