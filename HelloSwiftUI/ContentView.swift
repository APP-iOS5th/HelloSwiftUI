//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/8.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isToggle: Bool = true
    @State private var value: Int = 0
    @State private var sliderValue: Float = 0.5
    
    var body: some View {
        VStack {
            
            // MARK: Slider Example -> 볼륨 조절같은 기능
            Slider(value: $sliderValue, in: 0...1)
                .tint(.blue)
            
            // MARK: Stepper Example -> 지정한 범위의 숫자만큼 증가/감소
            Stepper("값 \(value)", value: $value, in: 1...10)
            
            // MARK: Toggle Example -> On/Off의 스위치 같은 기능
            Toggle(isOn: $isToggle, label: {
                Text("Toggle Example 1")
            })
            Toggle("Toggle Example 2", isOn: $isToggle)
            
            // MARK: Stack Example
            Text("위")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(Color.red)
            HStack {
                Text("왼쪽")
                    .tint(.red)
                CustomText(text: "오른쪽")
            }
            ZStack {
                Text("\t배경")
                Text("전경\t")
            }
            
            // MARK: Button Example
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                print("button1 tapped")
            }
            Button(action: {
                print("button2 tapped")
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }
    }
}

#Preview {
    ContentView()
}
