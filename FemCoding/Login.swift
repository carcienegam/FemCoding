//
//  Login.swift
//  FemCoding
//
//  Created by Alumno on 09/11/23.
//

import SwiftUI

struct Login: View {
    
    @State var username = ""
    @State private var password = ""
    @State private var isInHome = false
    
    var body: some View {
        VStack{
            Image("AppLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 180)
            
            TextField("Usuario", text: $username)
                .textFieldStyle(GeneralTextField(iconImage: "tray"))
                .padding(.horizontal, 30)
                .padding(.top, 20)
            SecureField("Contraseña", text: $password)
                .textFieldStyle(GeneralTextField(iconImage: "lock"))
                .padding(.horizontal, 30)
            

                Button("Ingresar"){
                    isInHome = true
                }
                .buttonStyle(GeneralButton())
                .padding(.horizontal, 100)
                .padding(.top, 25)
            
            NavigationLink(destination: NavigationTabView(), isActive: $isInHome){
                EmptyView()
            }
            
        }
        .padding()
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
