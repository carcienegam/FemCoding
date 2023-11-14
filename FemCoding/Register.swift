//
//  Register.swift
//  FemCoding
//
//  Created by Alumno on 09/11/23.
//

import SwiftUI

struct Register: View {
    @State var name = ""
    @State var username = ""
    @State var email = ""
    @State private var password = ""
    @State var gender = ""
    @State private var isInHome = false
    
    let genderOptions = ["Hombre", "Mujer", "Otro"]
    
    var body: some View {
        VStack{
            Image("AppLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 180)
                .padding()
            
            TextField("Nombre completo", text: $name)
                .textFieldStyle(GeneralTextField(iconImage: "person"))
                .padding(.horizontal, 30)
            
            TextField("Correo electrónico", text: $email)
                .textFieldStyle(GeneralTextField(iconImage: "tray"))
                .padding(.horizontal, 30)
            
            TextField("Usuario", text: $username)
                .textFieldStyle(GeneralTextField(iconImage: "at"))
                .padding(.horizontal, 30)
            
            SecureField("Contraseña", text: $password)
                .textFieldStyle(GeneralTextField(iconImage: "lock"))
                .padding(.horizontal, 30)
            
            SecureField("Contraseña", text: $password)
                .textFieldStyle(GeneralTextField(iconImage: "lock"))
                .padding(.horizontal, 30)
            
            GeneralPickerField(selection: $gender, options: genderOptions)
                .padding(.horizontal, 30)
            
            Button("Registrar"){
                isInHome = true
            }
            .buttonStyle(GeneralButton())
            .padding(.horizontal, 100)
            .padding(.top, 20)
            
            NavigationLink(destination: InfoUser(), isActive: $isInHome){
                NavigationLink(destination: InfoUser(), isActive: $isInHome){
                    EmptyView()
                }
                
            }
            .padding()
        }
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
