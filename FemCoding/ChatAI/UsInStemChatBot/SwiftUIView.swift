//
//  SwiftUIView.swift
//  UsInStemChatBot
//
//  Created by user248068 on 11/9/23.
//
import SwiftUI

struct StempireApp: View {
    @State private var selectedTab = 0
    @State private var topSelectedTab = 0
    
    var body: some View {
        VStack {
            HStack{
                TabView{
                    Text("Calendar")
                        .tabItem {
                            Image(systemName: "calendar")
                        }
                    Text("Search")
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                        }
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                }
                .frame(height: 50)
            }
            // Main TabView
            TabView{
                Text("Home")
                    .tabItem {
                        Image(systemName: "house")
                    }
 
                Text("Upload Post")
                    .tabItem {
                        Image(systemName: "plus.square")
                    }
 
                Text("Tools")
                    .tabItem {
                        Image(systemName: "square.and.pencil")
                    }
             }
        }
    }
}

struct StempireApp_Previews: PreviewProvider {
    static var previews: some View {
        StempireApp()
        
    }
}
