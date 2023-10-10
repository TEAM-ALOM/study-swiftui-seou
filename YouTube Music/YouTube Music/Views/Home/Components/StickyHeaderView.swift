//
//  StickyHeaderView.swift
//  YouTube Music
//
//  Created by 은서우 on 2023/10/10.
//

import SwiftUI

struct StickyHeaderView: View {
    var body: some View {
        // MARK: - STICKY HEADER
        ScrollView(.horizontal) {
            HStack {
                MoodButtonView(mood: "운동")
                MoodButtonView(mood: "행복한 기분")
                MoodButtonView(mood: "에너지 충전")
                MoodButtonView(mood: "휴식")
                MoodButtonView(mood: "로맨스")
            }
            .padding()
        } //: SCROLL
        .scrollIndicators(.hidden)
        .background(.black)
        
    }
}

struct StickyHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
