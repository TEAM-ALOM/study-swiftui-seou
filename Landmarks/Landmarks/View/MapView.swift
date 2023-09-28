import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - PROPERTY
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    // MARK: - BODY
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

#Preview {
    MapView()
}
