import SwiftUI

struct HikeBadge: View {
    // MARK: - PROPERTY
    var name: String
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .center) {
            Badge()
                .frame(width: 300, height: 300)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name).")
        }
    }
}

// MARK: - PREVIEW
#Preview {
    HikeBadge(name: "Preview Testing")
}
