import SwiftUI

struct CircleImage: View {
    // MARK: - PROPERTY
    
    var image: Image
    
    // MARK: - BODY
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(
                Circle().stroke(.white, lineWidth: 4)
            )
            .shadow(radius: 7)
        
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
