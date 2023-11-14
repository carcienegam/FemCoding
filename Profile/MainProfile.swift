//
//  Profile.swift
//  FemCoding
//
//  Created by Alumno on 11/11/23.
//

import SwiftUI

struct MainProfileInfoView: View {
    let systemImageName: String
    let title: String
    let content: String

    var body: some View {
        HStack {
            Image(systemName: systemImageName)
            Text(content)
                .font(.system(size: 11))
        }
        .padding(.bottom, 0.1)
        .foregroundColor(Color("DarkGray"))
    }
}

struct MainProfile: View {
    
    let profile : ProfileModel
    
    var body: some View {
        VStack{
            HStack{
                Image(profile.profilePicture)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 1))
                    .shadow(radius: 4)
                    .padding(.horizontal, 10)

                VStack{
                    Text(profile.followers)
                        .font(.system(size: 25, weight: .heavy))
                    Text("Seguidores")
                        .font(.system(size: 15))
                        .bold()
                }
                .padding(.horizontal, 10)
                
                VStack{
                    Text(profile.following)
                        .font(.system(size: 25, weight: .heavy))
                    Text("Seguidos")
                        .font(.system(size: 15))
                        .bold()
                }
                .padding(.horizontal, 10)

                
                Spacer()
            }
            .padding()
            
            HStack {
                VStack(alignment: .leading) {
                    ProfileInfoView(systemImageName: "mappin", title: "City", content: profile.city)
                    ProfileInfoView(systemImageName: "graduationcap", title: "Career", content: profile.career)
                }

                VStack(alignment: .leading) {
                    ProfileInfoView(systemImageName: "building.columns", title: "School", content: profile.school)
                    ProfileInfoView(systemImageName: "briefcase", title: "Job", content: profile.job)
                }
            }
            Divider()
               .background(Color("AppleGray"))
               .padding(.top, 5)
        }
    }
}

struct MainProfile_Previews: PreviewProvider {
    static var previews: some View {
        MainProfile(profile: ProfileModel.defaultProfile)
    }
}
