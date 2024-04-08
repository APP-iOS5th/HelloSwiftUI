//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이인호 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack {
            
            Slider(value: $sliderValue, in: 0...1)
                .tint(.red)
            
            Stepper("값 \(value)", value: $value, in: 0...10)
            
            Toggle("Toggle message on/off", isOn: $isOn)
            
            Text("위")
                .background(Color.yellow)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(Color.purple)
                .padding()
            
            HStack {
                Text("왼쪽")
                Text("오른쪽")
            }
            ZStack {
                Text("배경")
                Text("전경")
            }
            Button("Button1") {
                print("button1 click")
            }
            Button(action: {
                print("button2 click")
            }, label: {
                Text("Button2")
            })
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
