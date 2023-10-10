//
//  MusicListDetailView.swift
//  YouTube Music
//
//  Created by 은서우 on 2023/10/10.
//

import SwiftUI

struct MusicListDetailView: View {
    
    @State private var randomInt = Int.random(in: 0...5)
    
    var body: some View {
        HStack {
            
            Image("\(music[randomInt].cover)")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .clipShape(
                  RoundedRectangle(cornerRadius: 5)
                )
                .padding(10)
            
            //음악 이름, 가수 이름 -> Detail 수정해야함
            VStack(alignment: .leading, spacing: 5) {
                Text("\(music[randomInt].name)")
                    .font(.title2)
                    .fontWeight(.semibold)
                Text("\(music[randomInt].singer)")
            }
            
            Spacer()
            
            // 나중에 심볼 찾아다 바꾸기
            // 옵셔널로 넘겨서 재활용?
            Text(":")
                .padding()
        }
    }
}

struct MusicListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MusicListDetailView()
            .previewLayout(.sizeThatFits)
    }
}
