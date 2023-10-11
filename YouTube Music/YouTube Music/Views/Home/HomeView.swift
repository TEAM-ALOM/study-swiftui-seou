//
//  HomeView.swift
//  YouTube Music
//
//  Created by 은서우 on 2023/10/08.
//

// 기능 신경 쓰지 말고, SwiftUI로 뷰 구현하기
// 만약 기능 넣는다면 많은 음악 정보 어떻게 불러올지 생각.

// 뷰 전체적 구성 완성 후 -> [FiX] 배경색 Blur 먹여서 표현하기

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            ScrollView {
                ZStack {
                    // MARK: - HEADER
                    // header 디테일 수정
                    HomeHeaderView()
                }
                
                // MARK: - STICKY HEADER & FOOTER
                //sticky header top 부분 해결하기!
                LazyVStack(pinnedViews: [.sectionHeaders, .sectionFooters]) {
                    Section(
                        header: StickyHeaderView()
                    ){
                        // MARK: - MAIN
                        VStack {
                            
                            // 1. 음악 리스트 뷰 (5페이지 구성)
                            MusicListView()
                            
                            // 2. 카드뷰
                            MusicCardView()
                            
                            // 3. 1열 뷰
                            Text("추천앨범")
                            
                            // 4. 영상뷰
                            Text("라이브 공연 영상")
                            
                            // 5. 아티스트 뷰
                            Text("아래 아티스트를 좋아한다면")
                            
                            // 5. 둘러보기
                            Text("둘러보기")
                        } //: VSTACK
                        
                    } //: SECTION
                } //: LazyVSTACK
            } //: SCROLL
            .clipped()

            
            VStack {
                Spacer()
                
                StickyFooterView()
            }
        }
    }
}


// MARK: - PREVIEW
struct HomeView_Previws: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
