//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
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
                
            
            Stepper("값 \(value)", value: $value, in: 0...10)
            
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
                Text("배경")
                Text("전경")
            }
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                print("button1 click")
            }
            Button(action: {
                print("button2 click")
            }, label: {
                Text("Button")
            })
        }
    }
}

//#Preview {
//    ContentView()
//}


 
 struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
 }

