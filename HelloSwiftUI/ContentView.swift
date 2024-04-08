//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황민경 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            이미지 모양 변경 (사각형, 원형)
//            Image("toby")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//            Image("toby2")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//                .clipShape(Circle())
            
//            이미지 shadow 효과
//            Image("toby")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//                .shadow(color: .red, radius: 46, x: 0, y: 0)
//            Image("toby2")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//                .clipShape(Circle())
//                .shadow(color: .green, radius: 46, x: 90, y: 50)
//            이미지 shadow 및 overlay 효과
//            Image("toby")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//                .shadow(color: .red, radius: 46, x: 0, y: 0)
//                .overlay(Rectangle().stroke(Color.blue, lineWidth:10))
//            Image("toby2")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//                .clipShape(Circle())
//                .shadow(color: .green, radius: 46, x: 90, y: 50)
//                .overlay(Circle().stroke(Color.purple, lineWidth: 20))
            
//          이미지 투명도 opacity 조절
            Image("toby")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fill)
                .opacity(0.5)
            Image("toby2")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fill)
                .opacity(0.25)
        }
    }
}

#Preview {
    ContentView()
}
/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Privews: PreviewProvider {
    static var previews: some view {
        ContentView()
    }
 }
 */
