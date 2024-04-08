//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 육현서 on 4/8/24.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.6, green: 0.9, blue: 0.2)
}

struct ContentView: View {
    var body: some View {
        VStack{
            // Asset Color scheme 사용
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color("custom_pink"))
            
            // 지역상수 사용
            let customColor = Color(red: 1, green: 1, blue: 0.1)
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color(customColor))
            
            // 전역상수 사용
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.myCustomColor)
            
            
                            
        }
    }
}


#Preview {
    ContentView()
}
 
