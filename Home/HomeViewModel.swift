//
//  HomeViewModel.swift
//  FemCoding
//
//  Created by Daniela Ramos Garcia on 09/11/23.
//


import Foundation
import SwiftUI

class HomeViewModel : ObservableObject{
    
    @Published var arrHome = [HomeModel]()
    
    init(){
        getHome()
    }
    func getHome() {
        
        var home : HomeModel
        
        home = HomeModel(titulo: "Inicio de clases", descripcion: "Estoy super emocionada de empezar mis clases como inginiera de Software, ¿Sabías que solo 3 de cada 10 personas estudiando ingeniería son mujeres?", nombreImagenPost: "PostClau", NombrePersona: "@clauarciengam", nombreImagen: "clau", questions: 13)
        arrHome.append(home)
        
        home = HomeModel(titulo: "Fin del internship en Uber, SF 🌉", descripcion: "Cierro mi etapa como ingeniera de software en Uber. Gracias por las experiencias desafiantes y el aprendizaje en este emocionante viaje. ¡Listos para el próximo desafío! 🚗✨ ", nombreImagenPost: "PostDani", NombrePersona: "@danielaramosgarcia", nombreImagen: "yo", questions: 30)
        arrHome.append(home)
        
        home = HomeModel(titulo: "Oportunidades para mujeres", descripcion: "💻🚀 Únete a nuestro equipo. Buscamos ingenieras apasionadas para liderar proyectos innovadores. Tu talento es la clave para construir el futuro. ¡Aplica ahora! ", NombrePersona: "EmpresaX", nombreImagen: "EmpresaX", questions: 3)
        arrHome.append(home)
        
        home = HomeModel(titulo: "CyberHackathon", descripcion: "La semana pasada, participé en un emocionante hackathon. Desafíos superados y nuevos aprendizajes. ¡La seguridad en línea es tarea de todos! 👩‍💻🌐.", nombreImagenPost: "PostVale", NombrePersona:"@valelimon", nombreImagen: "vale", questions: 28)
        arrHome.append(home)
        
    }
}
