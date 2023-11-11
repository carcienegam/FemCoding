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
        VStack{

            HStack{
                Image(home.nombreImagen)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 50)
                    .padding()
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
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(home: HomeModel.defaultHome)
    }
}
