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
            Button("여기를 클릭하세요") {
                print("클릭 시 실행코드 1")
            }
            
            Button {
                print("클릭 시 실행코드 2")
            } label: {
                Text("Click here")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
                    .border(Color.orange, width: 6)
            }
            
            Button {
                print("클릭 시 실행코드 3")
            } label: {
                Image("sample_dog_square")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.yellow, lineWidth: 6))
            }
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
