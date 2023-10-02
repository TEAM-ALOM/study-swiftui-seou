import SwiftUI

// MARK: - FEATURECARD
struct FeatureCard: View {
    // MARK: - PROPERTY
    var landmark: Landmark
    
    
    
    // MARK: - BODY
    var body: some View {
        landmark.featureImage?
            .resizable()
            .aspectRatio(3 / 2, contentMode: .fit)
            .overlay {
                TextOverlay(landmark: landmark)
            }
    }
}

// MARK: - TEXT OVERLAY
struct TextOverlay: View {
    // MARK: - PROPERTIES
    var landmark: Landmark
    
    var gradient: LinearGradient {
        .linearGradient(
            Gradient(colors: [.black.opacity(0.6), .black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center)
    }
    
    // MARK: - BODY
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .bold()
                Text(landmark.park)
            }
            .padding()
        }
        .foregroundColor(.white)
    }
}


// MARK: - PREVIEW
#Preview {
    FeatureCard(landmark: ModelData().features[0])
}
