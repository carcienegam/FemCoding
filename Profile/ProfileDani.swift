//
//  Profile.swift
//  FemCoding
//
//  Created by Alumno on 09/11/23.
//

import SwiftUI


struct ProfileDani: View {
    
    public static var defProfDani: ProfileModel {
            return ProfileModel(profilePicture: "yo", followers: "2,500", following: "1,823", city: "Tuxtla Gtz, Chi.", career: "Ing. en Tecnologías Computacionales", school: "Tecnológico de Monterrey", job: "Uber Inc.")
        }
    
    @EnvironmentObject var homeVM: HomeViewModel
    
    var body: some View {
            VStack{
                Profile(profile: ProfileDani.defProfDani)
                ScrollView{
                    VStack(alignment: .leading){
                        HStack{
                            Text("Descripción:")
                                .font(.system(size: 20))
                                .bold()
                            Spacer()
                            Image(systemName: "pencil")
                        }
                        .padding(.bottom, 1)
                        Text("¡Hola! Soy Dani. Actualmente estoy cursando el segundo año de la licenciatura en Ingeniería Informática en el Tecnológico de Monterrey Campus Monterrey. Mis principales intereses son el desarrollo de software, la innovación, la IA y el emprendimiento. ¡Estoy realmente emocionado por ser parte del futuro y desarrollo de la tecnología! 👩🏻‍💻")
                        
                    }
                    .padding()
                    
                    
                    Divider()
                        .background(Color("AppleGray"))
                    
                    ForEach(homeVM.getPostsForUser(username: "@danielaramosgarcia")) { post in
                        PostView(home: post)
                        
                    }
                }
                
            }
        
    }
}

struct ProfileDani_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDani()
            .environmentObject(HomeViewModel())
    }
}
