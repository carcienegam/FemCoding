//
//  ButtonsGeneral.swift
//  FemCoding
//
//  Created by Alumno on 09/11/23.
//

import SwiftUI

    struct SectionCard : View {
        let text: String
        let destinationView: AnyView
        
        var body: some View {
            NavigationLink(destination: destinationView) {
                VStack(spacing: 0) {
                    HStack {
                        Text(text)
                            .multilineTextAlignment(.center)
                            .padding([.leading, .trailing])
                        Spacer()
                        
                    }
                } // vstack
                .padding()
                .background(Color.white)
                .cornerRadius(15)
                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 10)
                
            } // navigation link
            

        }
    }


struct SectionCard_Previews: PreviewProvider {
    static var previews: some View {
        SectionCard(text: "Iniciar Sesion", destinationView: AnyView(Login()))
    }
}
