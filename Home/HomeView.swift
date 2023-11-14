////
////  HomeView.swift
////  FemCoding
////
////  Created by Alumno on 09/11/23.
////
//
import SwiftUI


struct HomeView: View {
    
    @EnvironmentObject var homeVM: HomeViewModel
    @StateObject var vm = selectedmanager()
    
    @State private var showHerOnly = false
    var filterHome: [HomeModel]{
        homeVM.arrHome.filter{ home in
            (!showHerOnly || home.isHer)
        }
    }
    
    var body: some View {
            VStack {
                TabStyleTiktok(showHerOnly: $showHerOnly)
                ZStack {
                    // 1. ScrollView se coloca primero para que esté detrás del botón
                    ScrollView(.vertical, showsIndicators: false) {
                        ForEach(filterHome) { item in
                            NavigationLink(destination: PostView(home: item)) {
                                PostView(home: item)
                            }
                            .foregroundColor(Color(.black))
                        }
                    }
                    
                    // 2. Botón se coloca en la parte inferior de la pantalla
                    VStack {
                        Spacer()
                        
                        HStack {
                            Spacer()
                            
                            Circle()
                                .foregroundColor(Color.clear)
                                .frame(width: 60, height: 60)
                            
                            Button(action: {
                                // Acciones cuando se toca el botón
                            }) {
                                Image(systemName: "plus")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .padding()
                                    .background(Color("AccentColor"))
                                    .foregroundColor(.white)
                                    .cornerRadius(50)
                            }
                            .padding()
                            .frame(width: 60, height: 60)
                            .contentShape(Circle())
                        }
                        .padding(.horizontal, 15)
                        .padding(.bottom, 25)
                    }
                    .onChange(of: vm.selected) { newSelectedValue in
                        showHerOnly = newSelectedValue == .her
                    }
                    
                }
                
        }
    }
   
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject( HomeViewModel())
    }
}
