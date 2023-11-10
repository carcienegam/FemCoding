//
//  HomeModel.swift
//  FemCoding
//
//  Created by Daniela Ramos Garcia on 09/11/23.
//

import Foundation

struct HomeModel:Identifiable, Equatable{
    var id = UUID()
    var titulo : String
    var descripcion : String
    var nombreImagenPost : String?
    var NombrePersona : String
    var nombreImagen :String
    var questions: Int
}
extension HomeModel {
    
    public static var defaultHome = HomeModel(titulo: "Inicio de clases", descripcion: "Estoy super emocionada de empezar mis clases como inginiera de Software, ¿Sabías que solo 3 de cada 10 personas estudiando ingeniería son mujeres?", nombreImagenPost: "PostClau", NombrePersona: "@clauarciengam", nombreImagen: "clau", questions: 13)
}
