//
//  NavigationTabView.swift
//  FemCoding
//
//  Created by Alumno on 09/11/23.
//

import SwiftUI

struct NavigationTabView: View {
    
    @State private var isProfile = false
    @State private var isEvents = false
    
    var body: some View {
        
        VStack {
                   // Header with profile and calendar buttons
                   HStack {
                       Button(action: {
                           isProfile = true
                       }) {
                           Image(systemName: "person.circle")
                               .font(.title)
                       }
                       NavigationLink(destination: Profile(), isActive: $isProfile){
                           EmptyView()
                       }
                       
                       Spacer()
                       
                       Button(action: {
                           isEvents = true
                       }) {
                           Image(systemName: "calendar")
                               .font(.title)
                       }
                       NavigationLink(destination: Events(), isActive: $isEvents){
                           EmptyView()
                       }
                   }
                   .padding()
                   .foregroundColor(Color("DarkGray"))
            
            TabView{
                NavigationStack{
                    HomeView()
                }
                .tabItem{
                    Label("", systemImage: "house")
                    
                }
                
                RoadtoPrep()
                    .tabItem{
                        Label("", systemImage: "plus.square.fill")
                    }
                
                RoadtoPrep()
                    .tabItem{
                        Label("", systemImage: "road.lanes")
                    }
                
            }
        }
    }
}

struct NavigationTabView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTabView()
    }
}
