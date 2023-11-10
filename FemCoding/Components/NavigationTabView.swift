//
//  NavigationTabView.swift
//  FemCoding
//
//  Created by Alumno on 09/11/23.
//

import SwiftUI

struct NavigationTabView: View {
    
    @State private var isSidebar = false
    
    var body: some View {
        NavigationView {
            ZStack{
                TabView{
                    NavigationStack{
                        HomeView()
                            .environmentObject(HomeViewModel())
                    }
                    .tabItem{
                        Label("Inicio", systemImage: "house")
                            .font(.title)
                        
                    }
                    
                    UnderConstruction()
                        .tabItem{
                            Label("Subir", systemImage: "plus.square.fill")
                        }
                    
                    RoadtoPrep()
                        .tabItem{
                            Label("Camino", systemImage: "road.lanes")
                        }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                    
                ToolbarItem(placement: .principal) {
                    HStack {
                        NavigationLink(destination: Sidebar(isSidebarOpen: $isSidebar)){
                            Image(systemName: "person.circle")
                                .font(.title)
                        }
                        
                        Spacer()
                        
                        NavigationLink(destination: Events()){
                            Text("Eventos")
                            Image(systemName: "calendar")
                        }
                        
                        NavigationLink(destination: SearchBar()){
                            Image(systemName: "magnifyingglass")
                                
                        }
                        
                            
                        }
                    .foregroundColor(Color("AppleGray"))
                    
                    }
                }
            
        
        }
        .navigationBarBackButtonHidden(true)
    }
    
}


struct NavigationTabView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTabView()
    }
}
