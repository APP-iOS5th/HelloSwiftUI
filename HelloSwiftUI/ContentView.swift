//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 육현서 on 4/8/24.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.6, green: 0.9, blue: 0.2)
}

struct ContentView: View {
    var body: some View {
        VStack{
            Button("여기를 클릭하세요") {
                print("클릭시 실행코드 1")
            }
            
            Button {
                print("클릭시 실행코드 2")
            } label: {
                Text("Click here")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .padding()
                    .border(Color.red, width: 6)
            }
            
            Button {
                print("클릭시 실행코드 3")
            }       label: {
                Image("potato1")
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
 
