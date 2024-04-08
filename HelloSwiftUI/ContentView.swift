//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Yachae on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    var body: some View {
        VStack {
            Slider(value: $sliderValue, in: 0...1)
                .accentColor(.red)
            Stepper("값 \(value),", value: $value, in: 0...10)
            Toggle("Toggle message on/off", isOn: $isOn)
            Text("위")
                .background(Color.yellow)
                .padding()
                .font(.largeTitle)
                .fontWeight(.bold)
            HStack {
                Text("왼쪽")
                Text("오른쪽")
            }
            ZStack {
                Text("         배경")
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.purple/*@END_MENU_TOKEN@*/)
                Text("전경         ")
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
            }
            Button("버튼1") {
                print("button1 click")
            }
            Button(action: { print("button2 click" )}, label: {
                    Text("버튼2")
            })
                   
        }
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
    }
}


#Preview {
    ContentView()
}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
