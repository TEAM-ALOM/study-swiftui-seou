//
//  ContentView.swift
//  YouTube Music
//
//  Created by 은서우 on 2023/10/08.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    @State var selectedView = "home"
    
    // MARK: - BODY
    var body: some View {
        
        ZStack {
            TabView (selection: $selectedView) {
                HomeView()
                    .tabItem {
                        Label("홈", systemImage: "house")
                    }
                    .tag("home")
                
                
                Text("샘플")
                    .tabItem {
                        Label("샘플", systemImage: "play.fill")
                    }
                    .tag("sample")
                
//                Text("둘러보기")
//                    .tabItem {
//                        Label("둘러보기", systemImage: "safari")
//                    }
//                    .tag("looking")
//                
                Text("보관함")
                    .tabItem {
                        Label("보관함", systemImage: "music.note.house.fill")
                    }
                    .tag("storage")
            } //: TABVIEW
            .tint(.white)
            .onAppear {
                UITabBar.appearance().backgroundColor = UIColor(Color.customColorTabBar)
            }
            
        } //: ZSTACK
    }
}

#Preview {
    ContentView()
}
