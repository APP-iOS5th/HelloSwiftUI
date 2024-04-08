//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by JIHYE SEOK on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            
            Image("sample_dog_square")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fill)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 20, x: 0, y:0) // 그림자
                .overlay(Rectangle().stroke(Color.gray, lineWidth: 10)) // border
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/) // 투명도
            
            Spacer()
            
            Image("sample_dog_square")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fill)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/) // 원형으로 도형 변경
                .shadow(color: .yellow, radius: 20, x: 30, y:20) // 그림자
                .overlay(Circle().stroke(Color.purple, lineWidth: 20)) // border
                .opacity(0.5) // 투명도
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
