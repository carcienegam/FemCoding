import SwiftUI

struct Entrevistas: View {
    @State private var answer: String = ""
    @State private var showYesNoButtons = true
    @State private var showTecOnly = false
    @StateObject var vm2 = selectedmanager2()
    var toggleLabel: String {
        return showTecOnly ? "Entrevista Tecnica" : "Entrevista Conductual"
    }
    var body: some View {
        VStack {
            Toggle(toggleLabel, isOn: $showTecOnly)
                .padding()

            ScrollView {
                
                if showTecOnly {
                                   tecnica()
                               } else {
                                   conductual()
                               }
            }
            .padding()
            
        }
        .navigationBarTitle("Chat with AI")
    }
}


struct Entrevistas_Previews: PreviewProvider {
    static var previews: some View {
        Entrevistas()
    }
}

