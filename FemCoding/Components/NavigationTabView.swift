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
                .padding(.top, 20)
                .foregroundColor(.white)
                .toolbar {
    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: Events()){
                           Text("Eventos")
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
                

                // Main Content
                TabView() {
                    VStack {
                        HomeView()
                            .environmentObject(HomeViewModel())
                        
                        Spacer() // Esto ocupará el espacio restante en el eje vertical

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
