//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김형준 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        VStack {
            Image("sample_dog_square")
                .resizable()
                .frame(width: 200, height: 200)
                .aspectRatio(contentMode: .fill)
                .shadow( color: .yellow, radius: 30)
                .overlay(Rectangle().stroke(Color.pink, lineWidth: 5))
            Image("IMG_1608")
                .resizable()
                .frame(width: 160, height: 200)
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .shadow(color: .red, radius: 46, x: 0, y: 0)
                .overlay(Circle().stroke(Color.brown, lineWidth: 4))
            Image("sample_dog_square")
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fill)
                .shadow( color: .yellow, radius: 30)
                .overlay(Rectangle().stroke(Color.pink, lineWidth: 5))
                .opacity(0.4)
            Image("IMG_1608")
                .resizable()
                .frame(width: 180, height: 210)
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .shadow(color: .red, radius: 46, x: 0, y: 0)
                .overlay(Circle().stroke(Color.brown, lineWidth: 4))
                .opacity(0.5)
        }
    }
}
#Preview {
    ContentView()
}
