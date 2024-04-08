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
            Button("여기를 클릭하세요") {
                print("클릭시 실행코드 1")
            }
            
            Button {
                print("클릭시 실행코드 2")
            } label: {
                Text("Click here")
                    .font(.largeTitle)
                    .foregroundStyle(Color(.green))
                    .padding()
                    .border(Color.black, width: 6)
            }
            
            Button {
                print("클릭시 실행코드 3")
            } label: {
                Image("sample_dog_square")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.yellow, lineWidth: 4))
            }
            
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
