//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.0
    
    var body: some View {
        VStack() {
            //            이미지 크기 조정, 크롭(자르기, 원형)
//                        Image("sample_dog_square")
//                            .resizable()
//                            .frame(width: 250, height: 250)
//                            .aspectRatio(contentMode: .fill)
//            
//                        Image("sample_cat_square")
//                            .resizable()
//                            .frame(width: 250, height: 250)
//                            .aspectRatio(contentMode: .fill)
//                            .clipShape(Circle())

//                      이미지 그림자 효과
//                        Image("sample_dog_square")
//                            .resizable()
//                            .frame(width: 250, height: 250)
//                            .aspectRatio(contentMode: .fill)
//                            .shadow(color: .red, radius: 46, x: 0, y: 0)
//            
//                        Image("sample_cat_square")
//                            .resizable()
//                            .frame(width: 250, height: 250)
//                            .aspectRatio(contentMode: .fill)
//                            .clipShape(Circle())
//                            .shadow(color: .green, radius: 46, x: 90, y: 50)

//                      이미지 테두리 오버레이
//                        Image("sample_dog_square")
//                            .resizable()
//                            .frame(width: 250, height: 250)
//                            .aspectRatio(contentMode: .fill)
//                            .shadow(color: .red, radius: 46, x: 0, y: 0)
//                            .overlay(Rectangle().stroke(Color.blue, lineWidth: 10))
//            
//                        Image("sample_cat_square")
//                            .resizable()
//                            .frame(width: 250, height: 250)
//                            .aspectRatio(contentMode: .fill)
//                            .clipShape(Circle())
//                            .shadow(color: .green, radius: 46, x: 90, y: 50)
//                            .overlay(Circle().stroke(Color.purple, lineWidth: 20))
//
//            //          이미지 투명도 조절
                        Image("sample_dog_square")
                            .resizable()
                            .frame(width: 250, height: 250)
                            .aspectRatio(contentMode: .fill)
                            .opacity(0.5)

                        Image("sample_cat_square")
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
 swift 3.0 이전 프리뷰
 struct ContentView_Preview: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
