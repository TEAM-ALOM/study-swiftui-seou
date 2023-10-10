//
//  HomeHeaderView.swift
//  YouTube Music
//
//  Created by 은서우 on 2023/10/10.
//

import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Image("YouTubeMusicLogo2")
                
                Spacer()
                
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.white)
                
                Circle()
                    .fill(.white)
                    .frame(width: 30)
                
            }
            .padding()
        }
    }
}

#Preview {
    HomeHeaderView()
}
