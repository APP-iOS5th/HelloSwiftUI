//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.0
    
    var body: some View {
        VStack {
            Slider(value: $sliderValue, in: 0...1)
//                .tint(.red)
                .accentColor(.green)
            
            Stepper("값 \(value)", value: $value, in : 0...10)
            Toggle("Toggle Example on/off", isOn: $isOn)
            Text("위")
                .background(isOn ? .yellow : .red)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.red)
            HStack {
                Text("왼쪽")
                Text("오른쪽")
            }
            ZStack{
                Text("배경")
                Text("전경")
            }
            Button(action: {
                print("button click")
            }, label: {
                Text("Button")
            })
            Button(action: {
                print("button2 click")
                isOn.toggle()
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
 swift 3.0 이전 프리뷰
struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
