//
//  MusicCardViewButton.swift
//  YouTube Music
//
//  Created by 은서우 on 2023/10/10.
//

import SwiftUI

struct CardViewButton: View {
    @State var name: String
    var body: some View {
        ZStack{
            Circle()
                .fill(.regularMaterial)
                .stroke(Color.customColorBorderGray, lineWidth: 3)
                .frame(width: 55, height: 55)
                
            Image(systemName: name)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
        }
    }
}

struct CardViewButton_Previews: PreviewProvider {
    static var previews: some View {
        CardViewButton(name: "play.fill")
            .previewLayout(.sizeThatFits)
    }
}
