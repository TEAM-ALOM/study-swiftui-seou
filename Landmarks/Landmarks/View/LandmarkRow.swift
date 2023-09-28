import SwiftUI

struct LandmarkRow: View {
    // MARK: - PROPERTY
    
    var landmark: Landmark
    
    // MARK: - BODY
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

// MARK: - PREVIEW
#Preview {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
    .previewLayout(.fixed(width: 300, height: 70))
}
