//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Mac on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0
    
    var body: some View {
        HStack {
            VStack {
                Image("sample_cat_square")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .aspectRatio(contentMode: .fill)
                    .overlay(Rectangle().stroke(Color.green, lineWidth: 20)) // 테두리
                Image("sample_dog_square")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
                    .shadow(color: .orange, radius: 10, x: 50, y: 30) //그림자 좌표 지정
                Image("sample_cat_square")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .aspectRatio(contentMode: .fill)
                    .shadow(color: .red, radius: 20) // 그림자 원본뒤에
                Image("sample_dog_square")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle()) //원형으로 깎음
                    .opacity(0.5) //투명도
            }
            .padding()
        }
        .padding()
        .background(Color.gray)
    }
}

#Preview {
    ContentView()
}
/*
 swift 3.0이전
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 contentView()
 }
 }
 */
