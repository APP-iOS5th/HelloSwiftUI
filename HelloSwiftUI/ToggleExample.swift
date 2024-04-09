//
//  ToggleExample.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/9.
//

import SwiftUI

struct ToggleExample: View {
    
    @State private var myToggle: Bool = true
    @State var newValue: Int = 0
    @State var slider: Float = 0.0
    
    var body: some View {
        VStack {
            Toggle(isOn: $myToggle) {
                Text(myToggle ? "Orange" : "Green")
            }
            
            Rectangle()
                .frame(width: 200, height: 200)
                .foregroundStyle(myToggle ? .orange : .green)
            
            Stepper(value: $newValue, in: 0...25) {
                Text("Stepper value: \(newValue)")
            }
            
            Slider(value: $slider, in: 0...100, step: 1)
            
            Text("\(slider)")
        }
        .padding()
    }
}

#Preview {
    ToggleExample()
}
