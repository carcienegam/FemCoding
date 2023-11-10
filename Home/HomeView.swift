////
////  HomeView.swift
////  FemCoding
////
////  Created by Alumno on 09/11/23.
////
//
import SwiftUI




struct HomeView: View {
    
    @EnvironmentObject var homeVM : HomeViewModel

    
    var body: some View {
        VStack{
            TabStyleTiktok()
            ScrollView(.vertical, showsIndicators: false){
                ForEach(homeVM.arrHome) { item in
                    NavigationLink(destination: PostView(home: item),
                    label: { PostView(home: item)})
                    
                    
                }
                .foregroundColor(Color(.black))
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject( HomeViewModel())
    }
}
