import SwiftUI

struct FavoriteButton: View {
    // MARK: - PROPERTY
    
    @Binding var isSet: Bool
    
    // MARK: - BODY
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

// MARK: - PREVIEW
#Preview {
    FavoriteButton(isSet: .constant(true))
}
