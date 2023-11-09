//
//  RoadtoPrep.swift
//  FemCoding
//
//  Created by Alumno on 09/11/23.
//

import SwiftUI
   

struct RoadtoPrep: View {
    
    @State private var isEstudio = false
    @State private var isCurriculum = false
    @State private var isAplicacion = false
    @State private var isEntrevistas = false
    @State private var isOfertaNegociacion = false
   
    
    var body: some View {
        NavigationView{ // ELIMINAR CUANDO ESTE TODO EL FLUJO !!!!!!
            VStack{
                Text("Camino a prepararte")
                    .font(.title)
                    .fontWeight(.bold)
                Image("Mentoria")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 150)
                Text("Mentoria")
                    .fontWeight(.bold)
                
                HStack{
                    VStack{
                        Button(action: {
                            isEstudio = true
                        }) {
                            
                            VStack{
                                Image("Estudio")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 80)
                                Text("Estudio")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                            }
                        }
                        .padding()
                        
                        NavigationLink(destination: Estudio(), isActive: $isEstudio){
                            EmptyView()
                        }
                        
                        Button(action: {
                            isAplicacion = true
                        }) {
                            
                            VStack{
                                Image("Aplicacion")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 80)
                                Text("Aplicación")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                            }
                            .padding()
                        }
                        
                        NavigationLink(destination: Aplicacion(), isActive: $isAplicacion){
                            EmptyView()
                        }
                        
                        Button(action: {
                            isOfertaNegociacion = true
                        }) {
                            VStack{
                                Image("OfertaNegociacion")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 80)
                                Text("Oferta y Negociación")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                            }
                            .padding()
                        }
                        
                        NavigationLink(destination: OfertaNegociacion(), isActive: $isOfertaNegociacion){
                            EmptyView()
                        }
                       
                    }
                    .padding()
                    
                    VStack{
                        
                        Button(action: {
                            isCurriculum = true
                        }) {
                            VStack{
                                Image("Curriculum")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 80)
                                Text("Curriculum")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                            }
                            .padding()
                        }
                        
                        NavigationLink(destination: Curriculum(), isActive: $isCurriculum){
                            EmptyView()
                        }
                        
                        Button(action: {
                            isEntrevistas = true
                        }) {
                            VStack{
                                Image("Entrevista")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 80)
                                Text("Entrevista")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                            }
                            .padding()
                        }
                        
                        NavigationLink(destination: Entrevistas(), isActive: $isEntrevistas){
                            EmptyView()
                        }
                        
                    }
                    .padding()
                    
                }
            }
            
        }
    }
}

struct RoadtoPrep_Previews: PreviewProvider {
    static var previews: some View {
        RoadtoPrep()
    }
}
