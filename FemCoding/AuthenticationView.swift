//
//  AuthenticationView.swift
//  FemCoding
//
//  Created by Alumno on 09/11/23.
//

import SwiftUI

struct AuthenticationView: View {
    
    @State private var isLogingin = false
    @State private var isForgotPassword = false
    @State private var isRegistering = false
    
    var body: some View {
        NavigationView{
            VStack{
                Image("LogoName")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 180)
                    .padding()
                    .padding(.bottom, 50)

                    
                    Button("Iniciar Sesión"){
                        isLogingin = true
                    }
                    .buttonStyle(GeneralButton())
                    .padding(.horizontal, 80)
                
                    NavigationLink(destination: Login(), isActive: $isLogingin){
                        EmptyView()
                    }
                

                    Button("¿Olvidaste tu contraseña?") {
                        isForgotPassword = true
                    }
                    .buttonStyle(GeneralButton(buttonColor: Color.clear, textColor: Color("DarkGray")))
                    .padding()
                
                NavigationLink(destination: UnderConstruction(), isActive: $isForgotPassword){
                    EmptyView()
                }
                    
                    Button("Registro"){
                        isRegistering = true
                    }
                    .buttonStyle(GeneralButton(buttonColor: .clear, textColor: Color("AccentColor")))
                    .padding(.horizontal, 80)
                
                    NavigationLink(destination: Register(), isActive: $isRegistering){
                        EmptyView()
                    }
                
            }
                
        }
                
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView()
            .environmentObject(HomeViewModel())
    }
}
