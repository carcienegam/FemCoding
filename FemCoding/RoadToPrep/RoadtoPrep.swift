//
//  RoadtoPrep.swift
//  FemCoding
//
//  Created by Alumno on 09/11/23.
//

import SwiftUI
   

struct RoadtoPrep: View {
    
    var body: some View {
        
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
                    NavigationLink(destination: Estudio()){
                        VStack{
                            Image("Estudio")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 80)
                            Text("Eventos")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                        }
                    }
                    
                    NavigationLink(destination: Aplicacion()){
                        VStack{
                            Image("Aplicacion")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 80)
                            Text("Aplicacion")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                        }
                    }
                    
                    NavigationLink(destination: OfertaNegociacion()){
                        VStack{
                            Image("OfertaNegociacion")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 80)
                            Text("Oferta y Negociacion")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                        }
                    }
                }
                .padding(.horizontal, 40)
                
                Spacer()
                
                VStack{
                    
                    NavigationLink(destination: Curriculum()){
                        VStack{
                            Image("Curriculum")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 80)
                            Text("Curriculum")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                        }
                    }
                    
                    NavigationLink(destination: Entrevistas()){
                        VStack{
                            Image("Entrevistas")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 80)
                            Text("Entrevista")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                        }
                    }
                }
                .padding(.horizontal, 40)
            }
        }
    }
}

struct RoadtoPrep_Previews: PreviewProvider {
    static var previews: some View {
        RoadtoPrep()
    }
}
