//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 어재선 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    var body: some View {
        VStack{
            Stepper("값\(value)",value: $value, in: 0...10)
            
            Toggle("Toggle message on/off", isOn: $isOn)
                
            Text("위")
                .background(Color.purple)
                
            HStack {
                Text("왼쪽")
                Text("오른쪽")
            }
            ZStack {
                Text("  배경")
                Text("전경  ")
            }
            Button("Button") {
                print("button1 click")
            }
            Button(action:  {
                print("button2 click")
            }, label: {
                Text("Button")
            })
        }
    }
}

#Preview {
    ContentView()
}

/*
 Swift 3.0이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
