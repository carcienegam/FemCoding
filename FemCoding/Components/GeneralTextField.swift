//
//  GeneralTextField.swift
//  FemCoding
//
//  Created by Alumno on 09/11/23.
//

import SwiftUI

struct GeneralTextField: TextFieldStyle {
    let iconImage : String
    
    func _body(configuration: TextField<Self._Label>) -> some View{
        ZStack {
            RoundedRectangle(cornerRadius: 5.0)
                .foregroundColor(Color ("LightGray"))
                .frame(height: 50)
            
            HStack {
                configuration
                    .foregroundColor(Color("DarkGray"))
                Image(systemName: iconImage)
            }
            .padding()
            .foregroundColor(Color("DarkGray"))
        }
    }
}
