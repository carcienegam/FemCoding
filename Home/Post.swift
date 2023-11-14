//
//  PostView.swift
//  FemCoding
//
//  Created by Daniela Ramos Garcia on 09/11/23.
//


import SwiftUI

struct PostView: View {
    
    let home : HomeModel
    
    
    var body: some View {
        VStack(alignment: .leading){
            
            HStack{
                NavigationLink(destination:  profileView(for: home.NombrePersona)) {
                    Image(home.nombreImagen)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 50)
                        .padding()
                }
                VStack{
                    Text(home.titulo)
                        .font(.title)
                        .frame(alignment: .leading)
                    Text(home.NombrePersona)
                        .font(.title3)
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            VStack{
                Text(home.descripcion)
                    .frame(alignment: .leading)
                if let imageName = home.nombreImagenPost, !imageName.isEmpty {
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(minWidth: 100.0)
                }
                
            }
            HStack{
                if home.isHer  == true {
                    Text("Her")
                        .font(.title3)
                        .foregroundColor(.white)
                        .padding(.horizontal,20)
                        .background(Color("AccentColor"))
                        .cornerRadius(15)
                }
                
                Spacer()
                Image(systemName: "heart")
                    .foregroundColor(.red)
                    .imageScale(.medium)
                
                Image(systemName: "bubble.right")
                    .foregroundColor(.blue)
                    .imageScale(.medium)
                
                Image(systemName: "arrowshape.turn.up.right")
                    .foregroundColor(.green)
                    .imageScale(.medium)
                
            }
            .padding(.horizontal,10)
            Rectangle()
                .frame(height:2)
                .foregroundColor(Color("LightGray")) // Set the color to accent color
        }
    }
    
    func profileView(for username: String) -> some View {
            switch username {
            case "@clauarcienegam":
                return AnyView(ProfileView())
            case "@danielaramosgarcia":
                return AnyView(ProfileDani())
                
            case "@valelimon":
                return AnyView(ProfileVale())
                
            default:
                   // Handle unknown user or provide a default profile view
                   return AnyView(ProfileDani())
            }
        }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(home: HomeModel.defaultHome)
    }
}
