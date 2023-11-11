//
//  RoadtoPrep.swift
//  FemCoding
//
//  Created by Alumno on 09/11/23.
//

import SwiftUI

struct RoadtoPrep: View {
    
    @State private var isRegistering = false
    @State private var isInHome = false
    
    var body: some View {
        
        VStack{
            
            CustomButton(
                image: Image("Mentoria"),
                text: "Mentoria",
                destinationView: AnyView(Mentoria())
            )
            
            CustomButton(
                image: Image("Curriculum"),
                text: "Curriculum",
                destinationView: AnyView(Curriculum())
            )
            
            CustomButton(
                image: Image("Entrevistas"),
                text: "Entrevista",
                destinationView: AnyView(Entrevistas())
            )
            
            CustomButton(
                image: Image("OfertaNegociacion"),
                text: "Oferta y Negociacion",
                destinationView: AnyView(OfertaNegociacion())
            )
                        
        }
    }
}

struct RoadtoPrep_Previews: PreviewProvider {
    static var previews: some View {
        RoadtoPrep()
    }
}
