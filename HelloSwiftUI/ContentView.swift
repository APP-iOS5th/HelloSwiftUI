//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Mac on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    var body: some View {
        VStack {
            Stepper("값 \(value)", value: $value, in: 0...10)
            Slider(value: $sliderValue, in: 0...1)
                .accentColor(/*@START_MENU_TOKEN@*/.pink/*@END_MENU_TOKEN@*/)

            Toggle("Toggle on/off", isOn: $isOn)
            Text("위")
                .font(.largeTitle)
                .fontWeight(.semibold)
  //              .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/) //스타일이라는 상위 개념을 만들어서 얘는 곧.. 간다..
                .foregroundStyle(.blue)
            HStack {
                Text("왼쪽")
                Text("오른쪽")
            }
            .background(Color.purple)
            ZStack {
                Text("    배경")
                Text("전경    ")
            }
        }
        Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
            print("hi")
        }
        Button(action: {
            print("button click")
        }, label: {
            Text("button")
        })
    }
}

#Preview {
    ContentView()
}
/*
 swift 3.0이전
 struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        contentView()
    }
 }
 */
