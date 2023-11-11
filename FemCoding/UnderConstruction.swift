//
//  UnderConstruction.swift
//  FemCoding
//
//  Created by Alumno on 10/11/23.
//

import SwiftUI

struct UnderConstruction: View {
    var body: some View {
        VStack{
            Image(systemName: "hammer.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 70)
                .foregroundColor(Color("AccentColor"))
            Text("¡Próximamente!")
                .font(.title)
        }
        
    }
}

struct UnderConstruction_Previews: PreviewProvider {
    static var previews: some View {
        UnderConstruction()
    }
}
