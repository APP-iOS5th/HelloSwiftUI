//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황규상 on 4/8/24.
//
// 규상이 바부

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            /// 이미지 크기 조정, 크롭(자르기, 원형)
//            Image("sample_dog_square")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//            
//            Image("sample_cat_square")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//                .clipShape(Circle())
            
            /// 이미지 그림자 효과
            Image("sample_dog_square")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fill)
                .shadow(color: .red, radius: 46, x: 0, y: 0)
            
            Image("sample_cat_square")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .shadow(color: .green, radius: 46, x: 90, y: 50)
        }
    }
}

#Preview {
    ContentView()
}

/**
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews:PreviewProvider {
    static var previews: some View {
            ContentView()
    }
 }
 */
