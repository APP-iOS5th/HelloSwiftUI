//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.0
    
    var body: some View {
        VStack() {
            // Asset Color scheme 사용
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fill)
                .opacity(0.5)
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(Color("custom_brown"))
            
            //                        Image("sample_cat_square")
            // 지역상수 사용
            let customColor = Color(red: 1, green: 0, blue: 0)
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fill)
                .opacity(0.25)
            
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(customColor)
            
            // 전역상수 사용
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
 swift 3.0 이전 프리뷰
 struct ContentView_Preview: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
