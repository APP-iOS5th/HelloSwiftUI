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
            Button("Click Button"){
                print("button1 click")
            }
            Button {
                print("button2 click")
            } label: {
                Text("Click here")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
                    .border(Color.red, width: 6)
            }
            Button {
                print("button3 click")
            } label: {
                Image("sample_dog_square")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.yellow, lineWidth: 4))
            }
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
