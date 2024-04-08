//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Mac on 4/8/24.
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
                    .foregroundStyle(.green)
                    .padding()
                    .border(Color.red, width: 6)
            }
            Button {
                print("클릭시 실행코드 3")
            } label: {
                Image("sample_cat_square")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.yellow, lineWidth: 5))
            }
        }
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
