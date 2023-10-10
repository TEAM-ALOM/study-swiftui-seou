//
//  MusicCardView.swift
//  YouTube Music
//
//  Created by 은서우 on 2023/10/10.
//

import SwiftUI

struct MusicCardView: View {
    
    @State private var columns: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("NOPAIN")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipShape(
                      RoundedRectangle(cornerRadius: 5)
                    )
                    .padding(10)
                
                //음악 이름, 가수 이름 -> Detail 수정해야함
                VStack(alignment: .leading, spacing: 5) {
                    Text("그루비한 국내 싱잉랩")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("YouTubeMusic")
                }
                .padding()
            }
            LazyVGrid(columns: columns, spacing: 0) {
                ForEach(1...3, id: \.self) { count in
                    MusicListDetailView()
                }
            }
            .padding(.vertical)
            
            HStack(spacing: 15){
                CardViewButton(name: "play.fill") //아이콘 대체하기
                CardViewButton(name:"dot.radiowaves.left.and.right")
                CardViewButton(name: "rectangle.stack")
            }
            .padding()
        }
        .padding()
        .background(.ultraThinMaterial)
        .clipShape(
            RoundedRectangle(cornerRadius: 15)
          )
        .padding()
    }
}

struct MusicCardView_Previews: PreviewProvider {
    static var previews: some View {
        MusicCardView()
            .previewLayout(.sizeThatFits)
    }
}
