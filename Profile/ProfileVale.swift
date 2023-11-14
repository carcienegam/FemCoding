//
//  Profile.swift
//  FemCoding
//
//  Created by Alumno on 09/11/23.
//

import SwiftUI


struct ProfileVale: View {
    
    public static var defProfVale: ProfileModel {
            return ProfileModel(profilePicture: "vale", followers: "1,006", following: "1,234", city: "Monterrey, N.L.", career: "Ing. en Tecnologías Computacionales", school: "Tecnológico de Monterrey", job: "Microsoft Corp.")
        }
    
    @EnvironmentObject var homeVM: HomeViewModel
    
    var body: some View {
            VStack{
                Profile(profile: ProfileVale.defProfVale)
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
                        Text("Escríbe algo aquí...")
                            .foregroundColor(Color("DarkGray"))
                        
                    }
                    .padding()
                    
                    
                    Divider()
                        .background(Color("AppleGray"))
                    
                    ForEach(homeVM.getPostsForUser(username: "@valelimon")) { post in
                        PostView(home: post)
                    }
                }
                
            }
        
    }
}

struct ProfileVale_Previews: PreviewProvider {
    static var previews: some View {
        ProfileVale()
            .environmentObject(HomeViewModel())
    }
}
