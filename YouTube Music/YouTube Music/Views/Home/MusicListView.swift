//
//  MusicListView.swift
//  YouTube Music
//
//  Created by 은서우 on 2023/10/10.
//

import SwiftUI

struct MusicListView: View {
    
    @State private var columns: [GridItem] = [GridItem(.flexible())]
    @State private var rows: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        VStack(alignment: .leading){
            Text("이 노래로 뮤직 스테이션 시작하기")
            HStack {
                Text("빠른 선곡")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Text("모두 재생")
                    .padding(6)
                    .cornerRadius(100)
                    .overlay(RoundedRectangle(cornerRadius: 100)
                        .stroke(Color.customColorBorderGray, lineWidth: 2))
            }
            
            
            // [Problem] 기존 앱과 다름
            // page가 넘어가는 형식으로 구성,
            // 오른쪽 부분에 다음 페이지의 요소들이 보임
            // --- --- --- --- --- --- --- ---
            // 해결 방법?
            // 1. SwiftUI로 만들수있는가?
            // 2. Tabview로 구현하는 것이 아닌가?
            
            TabView {
                ForEach(0..<5, id: \.self) {_ in
                    LazyVGrid(columns: columns, spacing: 0) {
                        ForEach(1...4, id: \.self) { count in
                            MusicListDetailView()
                                .frame(width: 350)
                        }
                    }
                }
            } //: TABVIEW
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(height: 300) //수정하기 : 크기 geometry로 읽어오기(?)
            
            
        }
        .padding()
    }
}

#Preview {
    MusicListView()
}
