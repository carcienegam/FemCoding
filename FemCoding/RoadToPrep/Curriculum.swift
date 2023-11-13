//
//  Curriculum.swift
//  FemCoding
//
//  Created by Alumno on 09/11/23.
//

import SwiftUI

struct Curriculum: View {
    var body: some View {
        VStack{
            Text("Basado en tu carrera de Ingeniera en Tecnologías Computacionales, un formato  recomendable para tu curriculum es el siguiente:")
                .bold()
                .multilineTextAlignment(.center)
                .padding()
            Image("CurriculumHelper")
        }
       
    }
}

struct Curriculum_Previews: PreviewProvider {
    static var previews: some View {
        Curriculum()
    }
}
