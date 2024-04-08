//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack {
//            Toggle(isOn: $isOn, label: {
//                Text("Toggle Example")
//            })
            Toggle("Toggle message turn on / off", isOn: $isOn)
            Stepper("값 \(value)", value: $value, in: 0...10)
            Slider(value: $sliderValue, in: 0...1)
                .tint(.red)
            Text("위")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(Color.red)
            HStack {
                Text("윈쪽")
                Text("오른쪽")
            }
            ZStack {
                Text("     배경").background(Color.red)
                Text("전경").background(Color.green)
            }
            // add button from Object Library
            Button("Button1") {
                print("button1 clicked")
            }
            // add button by coding
            Button(action: {
                print("button2 clicked")
            }, label: {
                Text("Button2")
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

/*
// Swift 3.0 이전 프리뷰
struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
        ContentView()
    }
}
*/
