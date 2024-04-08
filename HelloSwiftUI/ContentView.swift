//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김형준 on 4/8/24.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}



struct ContentView: View {
    @State var colorMe = false
    var body: some View{
        VStack {
            Rectangle()
                .fill(colorMe ? Color.green : Color.red)
                .frame(width: 80, height: 80)
            Button("클릭") {
                colorMe.toggle()
            }
            Button{
                colorMe.toggle()
            } label: {
                Text("클릭해")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
                    .border(Color.black)
            }
            Button{
                colorMe.toggle()
            } label: {
                Image("IMG_1608")
                    .resizable()
                    .frame(width: 100, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.yellow, lineWidth: 4))
            }
        }
    }
}
#Preview {
    ContentView()
}
