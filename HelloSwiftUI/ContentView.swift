//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 박지혜 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Button("여기를 클릭하세요") {
                print("클릭 시 실행코드")
            }
            
            Button{
                print("클릭 시 실행코드2")
            } label: {
                Text("Click here")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
                    .border(Color.red, width: 6)
            }
        
            Button {
                print("클릭 시 실행코드3")
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


#Preview {
    ContentView()
}
