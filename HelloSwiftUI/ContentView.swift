//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SeongHoon Jung on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var slidervalue = 0.5
    
    var body: some View {
        VStack {
            Slider(value: $slidervalue, in: 0...1)
                .accentColor(.purple)
            
            Stepper("값 \(value))", value: $value, in: 0...10)
            
            Toggle("Toggle message on/off", isOn: $isOn)
            Text("위")
                .font(.largeTitle)
                .fontWeight(.semibold)
            HStack {
                Text("왼쪽")
                Text("오른쪽")
            }
            .background(Color.purple)
            ZStack {
                Text("   배경")
                Text("전경   ")
            }
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                print("button1 click")
            }
            Button(action: {
                print("button2 click")
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }
    }
}

#Preview {
    ContentView()
}
