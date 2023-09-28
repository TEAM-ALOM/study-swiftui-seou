import SwiftUI

struct ContentView: View {
    
    
    // MARK: - BODY
    var body: some View {
        VStack {
            
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                } //: HSTACK
                .font(.subheadline)
                .foregroundColor(.secondary)
            } //: VSTACK
            .padding()
            
            Spacer()
            
        } //: VSTACK
    }
}

#Preview {
    ContentView()
}
