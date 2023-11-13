//
//  Profile.swift
//  FemCoding
//
//  Created by Alumno on 09/11/23.
//

import SwiftUI


struct ProfileView: View {
    
    @EnvironmentObject var homeVM: HomeViewModel
    
    var body: some View {
            VStack{
                Profile(profile: ProfileModel.defaultProfile)
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
                        Text("Hola soy Claudia, estudiante de ingeniería en tecnologías computacionales en el Tec de Monterrey. Apasionada por aprender y emocionada por ser parte del mundo tecnológico.")
                        
                    }
                    .padding()
                    
                    
                    Divider()
                        .background(Color("AppleGray"))
                    
                    ForEach(homeVM.getPostsForUser(username: "@clauarcienegam")) { post in
                        PostView(home: post)
                        
                    }
                }
                
            }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .environmentObject(HomeViewModel())
    }
}
