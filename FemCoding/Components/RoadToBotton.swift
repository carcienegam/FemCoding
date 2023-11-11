import SwiftUI

struct CustomButton<Content: View>: View {
    let image: Image
    let text: String
    let destinationView: Content
    
    init(image: Image, text: String, destinationView: Content) {
        self.image = image
        self.text = text
        self.destinationView = destinationView
    }
    
    var body: some View {
        NavigationLink(destination: destinationView) {
            VStack {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 80)
                Text(text)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
            }
            .frame(width: 300, height: 130)
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color("AccentColor"), lineWidth: 1)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
            )
            .padding(.bottom, 10)
        }
        .buttonStyle(PlainButtonStyle()) // Para evitar el efecto de resaltado del botón
        .cornerRadius(15)
    }
}

// Uso del botón personalizado
struct RoadToButton: View {
    var body: some View {
        CustomButton(
            image: Image("Entrevistas"),
            text: "Entrevista",
            destinationView: AnyView(Entrevistas())
        )
    }
}
