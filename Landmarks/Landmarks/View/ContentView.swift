import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    // MARK: - BODY
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(ModelData())
}
