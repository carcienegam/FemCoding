//
//  Register.swift
//  FemCoding
//
//  Created by Alumno on 09/11/23.
//

import SwiftUI

struct InfoUser: View {
    @State var city = ""
    @State var state = ""
    @State var country = ""
    @State var career = ""
    @State var school = ""
    @State var job = ""
   
    @State private var isInHome = false
    
    
    var body: some View {
        VStack{
            Text("Información de perfil:")
                .font(.title)
                .bold()
                .foregroundColor(Color("AccentColor"))
            TextField("Ciudad", text: $city)
                .textFieldStyle(GeneralTextField(iconImage: "mappin"))
                .padding(.horizontal, 30)
                .padding(.bottom, 25)
            
            TextField("Estado", text: $state)
                .textFieldStyle(GeneralTextField(iconImage: "map"))
                .padding(.horizontal, 30)
                .padding(.bottom, 25)

            TextField("País", text: $country)
                .textFieldStyle(GeneralTextField(iconImage: "globe"))
                .padding(.horizontal, 30)
                .padding(.bottom, 25)

            TextField("Carrera", text: $city)
                .textFieldStyle(GeneralTextField(iconImage: "graduationcap"))
                .padding(.horizontal, 30)
                .padding(.bottom, 25)
            
            TextField("Escuela", text: $state)
                .textFieldStyle(GeneralTextField(iconImage: "building.columns"))
                .padding(.horizontal, 30)
                .padding(.bottom, 25)

            TextField("Trabajo", text: $country)
                .textFieldStyle(GeneralTextField(iconImage: "briefcase"))
                .padding(.horizontal, 30)
                .padding(.bottom, 25)
            
                Button("Ingresar"){
                    isInHome = true
                }
                .buttonStyle(GeneralButton())
                .padding(.horizontal, 100)
                .padding(.top, 20)
            
            NavigationLink(destination: NavigationTabView()
                .environmentObject(HomeViewModel()), isActive: $isInHome){
                EmptyView()
            }
            
        }
        .padding()
    }
}

struct InfoUser_Previews: PreviewProvider {
    static var previews: some View {
        InfoUser()
    }
}
