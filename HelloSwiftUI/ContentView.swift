//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김영훈 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Image("sample_dog_square")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .shadow(color: .red, radius: 46, x: 0, y: 0)
                .overlay(Rectangle().stroke(Color.blue, lineWidth: 10))
                .opacity(0.5)
            
            Image("sample_dog_square")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .clipShape(Circle())
                .shadow(color: .green, radius: 46, x:90, y: 50)
                .overlay(Circle().stroke(Color.purple, lineWidth: 20))
                .opacity(0.25)
        }
    }
}

/*
 Swift 3.0 이전 프리뷰
struct ContentView_Previews: PreviewProvider {
 static var priveiw: some View {
    ContentView()
 }
}
*/

#Preview {
    ContentView()
}
