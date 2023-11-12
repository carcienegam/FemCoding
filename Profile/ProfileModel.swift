//
//  ProfileModel.swift
//  FemCoding
//
//  Created by Alumno on 11/11/23.
//

import Foundation

struct ProfileModel:Identifiable, Equatable{
    var id = UUID()
    var profilePicture : String
    var followers : String
    var following : String
    var city : String
    var career : String
    var school : String
    var job : String

}
extension ProfileModel {
    
    public static var defaultProfile = ProfileModel(profilePicture: "clau", followers: "1,225", following: "934", city: "Monterrey, N.L.", career: "Ing. en Tecnologías Computacionales", school: "Tecnológico de Monterrey", job: "Apple Inc.")
}
