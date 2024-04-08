//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by JIHYE SEOK on 4/8/24.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.9, green: 0.6, blue: 0.8)
}

struct ContentView: View {
    
    var body: some View {
        VStack {
            
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(Color("custom_color"))
            
            let customColor = Color(red:1, green:0.1, blue: 0)
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(customColor)
            
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(Color.myCustomColor)
        }
    }
}

#Preview {
    ContentView()
}

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
