//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황민경 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    var body: some View {
        VStack {
            Slider(value: $sliderValue, in: 0...1)
                .tint(.brown)
                
            Stepper("값 \(value)", value: $value, in:0...10)
            
            Toggle("Toggle message on/off", isOn: $isOn)
            Text("위")
                .font(.largeTitle)
                .fontWeight(.semibold)
                //.background(Color.yellow)
                //.padding()
            HStack{
                Text("왼쪽")
                Text("오른쪽")
            }
            .background(Color.purple)
            ZStack{
                Text("배경")
                Text("전경")
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
        //.background(Color.red)
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
