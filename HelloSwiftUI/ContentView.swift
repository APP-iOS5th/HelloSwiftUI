//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    @State private var myToggle = true
    @State private var newValue = 1
    @State private var sliderValue = 0.0
    var body: some View {
        VStack {
            Toggle(isOn: $myToggle) {
                Text(myToggle ? "Orange" : "Green")
            }
            .padding()
            Rectangle()
                .frame(width: 200, height: 200)
                .foregroundColor(myToggle ? .orange : .green)
            Stepper(value: $newValue, in: 1...10) {
                Text("Stepper value = \(newValue)")
            }
            .padding()
            Slider(value: $sliderValue, in: 0...10, step: 1)
                .padding()
            Text("Slider value = \(sliderValue)")
        }
    }
}

#Preview {
    ContentView()
}
