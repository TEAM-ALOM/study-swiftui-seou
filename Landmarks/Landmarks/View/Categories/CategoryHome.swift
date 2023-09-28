import SwiftUI

struct CategoryHome: View {
    // MARK: - PROPERTY
    @EnvironmentObject var modelData: ModelData
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
        }
    }
}

// MARK: - PREVIEW
#Preview {
    CategoryHome()
        .environmentObject(ModelData())
}
