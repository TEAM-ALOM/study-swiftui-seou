import SwiftUI

struct ContentView: View {
    // MARK: - BODY
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environmentObject(ModelData())
}
