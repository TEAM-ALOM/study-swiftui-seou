//
//  MoodButtonView.swift
//  YouTube Music
//
//  Created by 은서우 on 2023/10/08.
//

import SwiftUI

struct MoodButtonView: View {

    var mood: String
    
    var body: some View {
        
        Text(mood)
            .padding()
            .background(Color.customColorDarkGray)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.customColorBorderGray, lineWidth: 2))
        
    }
}

struct MoodButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MoodButtonView(mood: "운동")
            .previewLayout(.sizeThatFits)
    }
}
