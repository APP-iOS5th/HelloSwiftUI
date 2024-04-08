//
//  ImageComponent.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/8.
//

import SwiftUI

struct ImageControlExample: View {
    var body: some View {
        VStack {
//            MARK: 이미지 크기 조정
//            Image("sample_cat_square")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//                .clipShape(.circle)
//            Image("sample_dog_square")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
            
//            MARK: 이미지 그림자 배경
//            Image("sample_cat_square")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//                .clipShape(.circle)
//                .shadow(color: .red, radius: 46)
//            Image("sample_dog_square")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//                .shadow(color: .green, radius: 46, x: 90, y: 50)
            
//            MARK: 이미지 테두리 설정
//            Image("sample_cat_square")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//                .clipShape(.circle)
//                .shadow(color: .red, radius: 46)
//                .overlay(Circle().stroke(Color.blue, lineWidth: 10))
//            Image("sample_dog_square")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//                .shadow(color: .green, radius: 46, x: 90, y: 50)
//                .overlay(Rectangle().stroke(Color.purple, lineWidth: 20))
            
//          MARK: 이미지 투명도 조절
            Image("sample_cat_square")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fill)
                .opacity(0.5)
                
            Image("sample_dog_square")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fill)
                .opacity(0.25)
        }
    }
}

#Preview {
    ImageControlExample()
}
