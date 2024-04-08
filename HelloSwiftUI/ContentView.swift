//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack {
            Spacer()
            // 이미지 크기 조정, 크롭(자르기, 원형), 그림자, 테두리, 투명도
            Image("sample_dog_square")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fill)
                .shadow(color: .red, radius: 46, x: 0, y: 0)
                .overlay(Rectangle().stroke(.red, lineWidth: 3))
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            Spacer()
            Image("sample_cat_square")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .shadow(color: .green, radius: 10, x: 8, y: 8)
                .overlay(Circle().stroke(.green, lineWidth: 5))
                .opacity(0.2)
            Spacer()
            
        }
    }
}

#Preview {
    ContentView()
}
