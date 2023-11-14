//
//  ButtonTag.swift
//  FemCoding
//
//  Created by Alumno on 13/11/23.
//

import SwiftUI

struct ButtonTag: View {
    
    let category : String
    
    var body: some View {
        Text(category)
            .font(.title3)
            .foregroundColor(.white)
            .padding(.horizontal,20)
            .background(Color("AccentColor"))
            .cornerRadius(15)
    }
}

struct ButtonTag_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTag(category: ("Her"))
    }
}
