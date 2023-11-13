import SwiftUI

struct NavigationTabView: View {
    @State private var isDetailViewPresented = false
    @State private var isSidebar = false


    var body: some View{
                
        NavigationView {
            VStack {
                // Header
                HStack {
                
                }
                .padding(.top, 10)
                .foregroundColor(.white)
                .toolbar {
    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: Events()){
                           Image(systemName: "calendar")
                       }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: Events()){
                           Image(systemName: "magnifyingglass")
                       }
                    }
                }
                .foregroundColor(Color("AppleGray"))
                TabView() {
                    VStack {
                        HomeView()
                           
                        
                        Spacer()

                    }
                    .tabItem{
                        Label("Inicio", systemImage: "house")
                            .font(.title)
                                            
                        }

                    RoadtoPrep()
                       .tabItem{
                           Label("Apoyo", systemImage: "figure.and.child.holdinghands")
                       }
                    
                    ProfileView()
                       .tabItem{
                           Label("Perfil", systemImage: "person")
                       }

                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct NavigationTabView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTabView()
            .environmentObject(HomeViewModel())
    }
}
