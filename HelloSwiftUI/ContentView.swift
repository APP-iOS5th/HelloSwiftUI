//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이인호 on 4/8/24.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}
struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack {
//            ZStack {
//                Image(systemName: "heart.fill")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .foregroundStyle(Color("custom_brown"))
//                
//                Image("sample_dog_square")
//                                .resizable()
//                                .frame(width: 250, height: 250)
//                                .aspectRatio(contentMode: .fill)
//            }
//            Image(systemName: "heart.fill")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .foregroundStyle(Color("custom_brown"))
            
//            let customColor = Color(red: 1, green: 0, blue: 0)
//            Image(systemName: "heart.fill")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .foregroundStyle(customColor)
//            
//            
//            Image(systemName: "heart.fill")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .foregroundStyle(Color.myCustomColor)
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
