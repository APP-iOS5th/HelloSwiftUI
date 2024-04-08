//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Mac on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var colorMe = false
    var body: some View {
        VStack {
            Rectangle()
                .fill(colorMe ? Color.green : Color.gray)
                .frame(width: 250, height: 100)
            Button("여기를 클릭하세요") {
                colorMe.toggle()
            }
            Button {
                colorMe.toggle()
            } label: {
                Text("Click here")
                    .font(.largeTitle)
                    .foregroundStyle(.green)
                    .padding()
                    .border(Color.red, width: 6)
            }
            Button {
                colorMe.toggle()
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
