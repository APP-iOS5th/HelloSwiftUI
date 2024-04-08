//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황민경 on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    @State var colorMe = false
    var body: some View {
        VStack {
            Rectangle()
                .fill(colorMe ? Color.green : Color.gray)
                .frame(width: 250, height: 100)
            
            Button("여기를 클릭하세요"){
                colorMe.toggle()
            }
            Button{
                colorMe.toggle()
            } label: {
                Text("Click here")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
                    .border(Color.red, width:6)
            }
            Button {
                colorMe.toggle()
            } label: {
                Image("toby")
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
 struct ContentView_Privews: PreviewProvider {
    static var previews: some view {
        ContentView()
    }
 }
 */
