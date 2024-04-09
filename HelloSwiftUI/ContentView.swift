//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황규상 on 4/8/24.
//
// 규상이 바부

import SwiftUI

struct ContentView: View {
    @State var myToggle = false
    @State var newValue = 0
    @State var sliderValue = 0.0
    
    var body: some View {
        VStack {
            Toggle(isOn: $myToggle) {
                Text(myToggle ? "Orange" : "Green")
            }.padding()
            
            Rectangle()
                .frame(width: 200, height: 150)
                .foregroundColor(myToggle ? .orange : .green)
            
            Stepper(value: $newValue, in: 1...60, step: 3) {
                Text("Stepper value = \(newValue)")
            }.padding()
            
            Slider(value: $sliderValue, in: 0...50, step: 5)
                .padding()
            Text("Slider value = \(String(format: "%.2f", sliderValue))")
        }
    }
}


#Preview {
    ContentView()
}

/**
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews:PreviewProvider {
    static var previews: some View {
            ContentView()
    }
 }
 */
