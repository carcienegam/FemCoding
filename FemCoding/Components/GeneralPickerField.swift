//
//  GeneralPickerField.swift
//  FemCoding
//
//  Created by Alumno on 09/11/23.
//

import SwiftUI

struct GeneralPickerField: View {
    @Binding var selection: String
    let options: [String]
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5.0)
                .foregroundColor(Color("LightGray"))
                .frame(height: 50)
            
            HStack {
                Picker("", selection: $selection) {
                    ForEach(options, id: \.self) {
                        Text($0)
                            .foregroundColor(Color("DarkGray"))
                            .multilineTextAlignment(.leading)
                    }
                }
                .foregroundColor(Color("DarkGray"))
                
                Image(systemName: "keyboard_arrow_down")
            }
            .padding()
            .foregroundColor(Color("DarkGray"))
        }
    }
}
