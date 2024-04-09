//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김형준 on 4/8/24.
//

import SwiftUI



import SwiftUI

extension Color {
    
}
    
struct ContentView: View {
    @State var myToggle = true
    @State var newValue = 0
    @State var sliderValue = 0.0

    
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
