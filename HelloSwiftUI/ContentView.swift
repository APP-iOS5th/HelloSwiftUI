//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이인호 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var myToggle = true
    @State private var newValue = 0
    @State private var sliderValue = 0.0
    
    var body: some View {
        VStack {
            Toggle(isOn: $myToggle) {
                Text(myToggle ? "Orange" : "Green")
            }
            .padding()
            
            Rectangle()
                .frame(width: 200, height: 150)
                .foregroundColor(myToggle ? .orange : .green)
            
            Stepper(value: $newValue, in: 1...10) {
                Text("Stepper value = \(newValue)")
            }
            .padding()
            
            Slider(value: $sliderValue, in: 1...50, step: 4)
                .padding()
            Text("Slider value = \(sliderValue)")
        }
    }
}

#Preview {
    ContentView()
}

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
 }
 */
