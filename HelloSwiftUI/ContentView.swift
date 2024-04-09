//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by John Yun on 4/8/24.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}

struct ContentView: View {
    @State var myToggle = true
    @State var newValue = 0
    @State var sliderValue = 0.0
    
    var body: some View {
        VStack {
            Toggle(isOn: $myToggle) {
                Text(myToggle ? "Cyan" : "Green")
            }
            .padding()
            
            Rectangle()
                .frame(width: 200, height: 150)
                .foregroundColor(myToggle ? .cyan : .green)
            
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
