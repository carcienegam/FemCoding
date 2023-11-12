//
//  Sidebar.swift
//  FemCoding
//
//  Created by Alumno on 09/11/23.
//

import SwiftUI

struct Sidebar: View {
    @Binding var isSidebarOpen: Bool
    @State private var isProfile = false
    
    var sideBarWidth = UIScreen.main.bounds.size.width * 0.7
    var bgColor: Color = Color.white
    
    var body: some View {
        ZStack {
            GeometryReader { _ in
                EmptyView()
            }
            .background(.black.opacity(0.6))
            .opacity(isSidebarOpen ? 1 : 0)
            .animation(.easeInOut.delay(0.2), value: isSidebarOpen)
            .onTapGesture {
                isSidebarOpen.toggle()
            }
            content
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    var content: some View {
        
        HStack(alignment: .top) {
            ZStack(alignment: .top) {
                bgColor
                VStack(alignment: .leading){
                    HStack{
                        Button(action: {
                            isProfile = true
                        }) {
                            Image(systemName: "person.circle")
                                .font(.system(size: 60))
                            Text("@username")
                        }
                        .padding(.bottom, 80)
                        
                        NavigationLink(destination: ProfileView(), isActive: $isProfile){
                            EmptyView()
                        }
                    }
                }
                .foregroundColor(.black)
                .padding(.top, 80)
                
                
                VStack(alignment: .leading){
                    Button(action: {
                        isProfile = true
                    }) {
                        Image(systemName: "person")
                            .font(.title)
                        Text("Perfil")
                    }
                    .padding(.bottom, 35)
                    
                    NavigationLink(destination: ProfileView(), isActive: $isProfile){
                        EmptyView()
                    }
                    
                    Button(action: {
                        // isProfile = true
                    }) {
                        Image(systemName: "bookmark")
                            .font(.title)
                        Text("Favoritos")
                    }
                    .padding(.bottom, 35)
                    
                    
                    Button(action: {
                        //isProfile = true
                    }) {
                        Image(systemName: "gearshape")
                            .font(.title)
                        Text("Configuración")
                    }
                    .padding(.bottom, 35)
                    
                    Button(action: {
                        //isProfile = true
                    }) {
                        Image("AppLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        Text("Ella")
                    }
                    Spacer()
                    
                    
                    
                }
                .foregroundColor(.black)
                .padding(.top, 200)
            }
            .frame(width: sideBarWidth)
            .offset(x: isSidebarOpen ? 0 : -sideBarWidth)
            .animation(.default, value: isSidebarOpen)
            
            Spacer()
        }
        .navigationBarHidden(true)
        
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar(isSidebarOpen: .constant(true))
    }
}
