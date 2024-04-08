//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    //SwiftUI Slider, Stepper, @State
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack { //Vertical
            Slider(value: $sliderValue, in: 0...1)
                .accentColor(/*@START_MENU_TOKEN@*/.purple/*@END_MENU_TOKEN@*/)
            
            Stepper("값 \(value)", value: $value, in: 0...10)
            
            Toggle("Toggle message on/off", isOn:$isOn)
            Text("위")
                .font(.largeTitle)
                .fontWeight(.semibold)
            HStack { //Horizontal
                Text("왼쪽")
                Text("오른쪽")
            }
            .background(Color.purple)
            ZStack {
                Text("배경")
                Text("전경")
            }
            Button("Button"){
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
/*
Swift 3.0 이전 프리퓨
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
