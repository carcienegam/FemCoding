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
        
        home = HomeModel(titulo: "FemCoding Challenge 2023 ", descripcion: "Hoy volamos a Tijuana en camino al FemCoding Challenge 2023 organizado por Enactus. Estamos super emocionadas de por fin poderles mostrar nuestra app a todos. USinSTEM! @danielaramosgarcia @valelimon", nombreImagenPost: "PostClau4", NombrePersona: "@clauarcienegam", nombreImagen: "clau", questions: 8, isHer: false)
        arrHome.append(home)
        
        home = HomeModel(titulo: "Fin del internship en Uber, SF 🌉", descripcion: "Cierro mi etapa como ingeniera de software en Uber. Gracias por las experiencias desafiantes y el aprendizaje en este emocionante viaje. ¡Listos para el próximo desafío! 🚗✨ ", nombreImagenPost: "PostDani", NombrePersona: "@danielaramosgarcia", nombreImagen: "yo", questions: 30, isHer: false)
        arrHome.append(home)
        
        home = HomeModel(titulo: "Evento", descripcion: "💻🚀 Únete a nuestro equipo. Buscamos ingenieras apasionadas para liderar proyectos innovadores. Tu talento es la clave para construir el futuro. ¡Aplica ahora! ", nombreImagenPost: "PostDani2", NombrePersona: "EmpresaX", nombreImagen: "fakecompany", questions: 3, isHer: true)
        arrHome.append(home)
        
        
        home = HomeModel(titulo: "Oportunidades para mujeres", descripcion: "💻🚀 Únete a nuestro equipo. Buscamos ingenieras apasionadas para liderar proyectos innovadores. Tu talento es la clave para construir el futuro. ¡Aplica ahora! ", NombrePersona: "EmpresaX", nombreImagen: "fakecompany", questions: 3, isHer: true)
        arrHome.append(home)
        
        home = HomeModel(titulo: "CyberHackathon", descripcion: "La semana pasada, participé en un emocionante hackathon. Desafíos superados y nuevos aprendizajes. ¡La seguridad en línea es tarea de todos! 👩‍💻🌐.", nombreImagenPost: "PostVale", NombrePersona:"@valelimon", nombreImagen: "vale", questions: 28, isHer: false)
        arrHome.append(home)
        
        home = HomeModel(titulo: "HackMty 2023", descripcion: "Super feliz de haber sido parte de la familia de HackMTY 2023. Que gran evento organizó la mesa, y fue un honor haber podido ayudado como staff. Me encantó ver los proyectos tan innovadores y creativos de los participantes.", nombreImagenPost: "PostClau3", NombrePersona:"@clauarcienegam", nombreImagen: "clau", questions: 10, isHer: false)
        arrHome.append(home)
        
        home = HomeModel(titulo: "Visita al laboratio de redes", descripcion: "Esta semana durante mi clase de ciberseguridad pudimos dar una visita al laboratorio de redes a hacer algunas prácticas. ¿Alguien me puede recomendar algún curso para aprender más sobre estos temas?", nombreImagenPost: "PostDani3", NombrePersona:"@danielaramosgarcia", nombreImagen: "yo", questions: 18, isHer: false)
        arrHome.append(home)
        
        home = HomeModel(titulo: "Inicio de clases", descripcion: "Estoy super emocionada de empezar mis clases como inginiera de Software, ¿Sabías que solo 3 de cada 10 personas estudiando ingeniería son mujeres?", nombreImagenPost: "PostClau", NombrePersona: "@clauarcienegam", nombreImagen: "clau", questions: 13, isHer: false)
        arrHome.append(home)
        
        home = HomeModel(titulo: "STEM Women Congress", descripcion: "Compañeras, les comparto información sobre el STEM Women Congress que se llevará acabo este año. Yo fui el año pasado y aprendí demasiado y me encantó haber conocido a tantas compañeras de la avenida. No se pierdan la oportunidad de asistir si puede,", nombreImagenPost: "PostVale3", NombrePersona:"@valelimon", nombreImagen: "vale", questions: 56, isHer: true)
        arrHome.append(home)
        
        home = HomeModel(titulo: "Visita a Microsoft en NYC", descripcion: "Esta semana santa tuve la oportunidad de viajar a Nueva York donde pudimos ir a las oficinas de Microsoft en Manhattan. En las oficinas nos dieron un recorrido y muchos tips de como aplicar.", nombreImagenPost: "PostClau2", NombrePersona:"@clauarcienegam", nombreImagen: "clau", questions: 5, isHer: false)
        arrHome.append(home)
        
    }
    
    func getPostsForUser(username: String) -> [HomeModel] {
            return arrHome.filter { $0.NombrePersona == username }
        }
}
