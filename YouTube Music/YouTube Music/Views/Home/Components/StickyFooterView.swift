//
//  StickyFooter.swift
//  YouTube Music
//
//  Created by 은서우 on 2023/10/10.
//

import SwiftUI

struct StickyFooterView: View {
    var body: some View {
        HStack {
            
            Image("NOPAIN")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .clipShape(
                  RoundedRectangle(cornerRadius: 5)
                )
                .padding(10)
            
            //음악 이름, 가수 이름 -> Detail 수정해야함
            VStack(alignment: .leading, spacing: 5) {
                Text("NO PAIN")
                    .font(.title2)
                    .fontWeight(.semibold)
                Text("실리카겔")
            }
            
            Spacer()
            
            // 나중에 심볼 찾아다 바꾸기
            Image(systemName: "display")
                .padding()
            
            Image(systemName: "play.fill")
                .padding()
        }
        .background(Color.customColorTabBar)
    }
}

struct StickyFooterView_Previews: PreviewProvider {
    static var previews: some View {
        StickyFooterView()
            .previewLayout(.sizeThatFits)
    }
}
