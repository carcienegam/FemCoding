//
//  GeneralButton.swift
//  FemCoding
//
//  Created by Alumno on 09/11/23.
//

import SwiftUI

struct GeneralButton: ButtonStyle {
    
    let buttonColor : Color
    let borderColor : Color
    let textColor : Color
    
    init(buttonColor: Color = Color("AccentColor"), borderColor: Color = .clear, textColor: Color = .white) {
        self.buttonColor = buttonColor
        self.borderColor = borderColor
        self.textColor = textColor
    }
    
    func makeBody(configuration: Configuration) -> some View{
        configuration.label
            .padding()
            .frame(maxWidth: .infinity)
            .frame(height: 60)
            .background(buttonColor)
            .foregroundColor(textColor)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(borderColor, lineWidth: 2)
            )
            .cornerRadius(15)
            .opacity(configuration.isPressed ? 0.5 : 1)
    }
}

