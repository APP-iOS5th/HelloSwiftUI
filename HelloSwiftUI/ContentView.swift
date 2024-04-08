//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 홍준범 on 4/8/24.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}

struct ContentView: View {
    var body: some View {
        VStack {
            Button("여기를 클릭하세요") {
                print("click 1")
            }
            
            Button {
                print("click 2")
            } label: {
                Text("Click Here")
                    .font(.largeTitle)
                    .foregroundStyle(Color.green)
                    .padding()
                    .border(Color.red, width: 6)
            }
            
            Button {
                print("click 3")
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
 static var previews: som View {
 ContentView()
 }
 }
 */
  
