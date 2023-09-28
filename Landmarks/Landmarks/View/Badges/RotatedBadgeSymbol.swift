import SwiftUI

struct RotatedBadgeSymbol: View {
    // MARK: - PROPERTY
    let angle: Angle
    
    // MARK: - BODY
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 5))
}
