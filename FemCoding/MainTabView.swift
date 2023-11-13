//
//  MainTabView.swift
//  FemCoding
//
//  Created by Alumno on 11/11/23.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab: Int?

    var body: some View {
        NavigationView {
            TabView(selection: $selectedTab) {
                
                VStack {
                    HomeView()
                        .environmentObject(HomeViewModel())
                        .opacity(selectedTab == 1 ? 1 : 0) // Mostrar solo si la pestaña 1 está seleccionada
                    
                    Spacer()
                }
                .tabItem {
                    Label("Inicio", systemImage: "house")
                        .font(.title)
                }
                .tag(1)

                RoadtoPrep()
                    .opacity(selectedTab == 2 ? 1 : 0) // Mostrar solo si la pestaña 2 está seleccionada
                    .tabItem {
                        Label("Apoyo", systemImage: "figure.and.child.holdinghands")
                    }
                    .tag(2)
            }
            .navigationBarHidden(true)
        }
    }
}


struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
