import SwiftUI

struct OfertaNegociacion: View {
    @State private var currentField = ""
    @State private var currentSalary = ""
    @State private var currentPosition = ""
    
    @State private var desiredSalary = ""
    @State private var desiredLocation = ""
    @State private var desiredHours = ""
    
    @State private var negotiationTips: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Section("Oferta Actual") {
                TextField("Carrera STEM", text: $currentField)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Salario Actual", text: $currentSalary)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                
                TextField("Puesto Actual", text: $currentPosition)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            Section("Oferta Deseada") {
                TextField("Salario Deseado", text: $desiredSalary)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                
                TextField("Ubicación Deseada", text: $desiredLocation)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Horas a la Semana Deseadas", text: $desiredHours)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
            }
            
            Spacer() // Add Spacer to push the content to the top
            
            Button("Obtener Consejos de Negociación") {
                generateNegotiationTips()
            }
            
            Text(negotiationTips)
                .multilineTextAlignment(.leading)
        }
        .padding()
    }
    
    private func generateNegotiationTips() {
        // Logic to generate negotiation tips based on the desired offer
        // (similar to the previous implementation)
        negotiationTips = """
        Consejos para negociar tu nueva oferta:
        - Investiga los salarios promedio en tu campo y ubicación.
        - Destaca tus logros y contribuciones específicas en proyectos relevantes.
        - Considera beneficios no salariales que puedan ser importantes para ti.
        - Prepárate para hablar sobre tu desarrollo profesional y cómo has crecido en tu rol.
        - Mantén una actitud positiva y enfócate en el valor que aportas a la empresa.
        """
    }
}

struct OfertaNegociacion_Previews: PreviewProvider {
    static var previews: some View {
        OfertaNegociacion()
    }
}

