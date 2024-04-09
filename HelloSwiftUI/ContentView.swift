//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by jinwoong Kim on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var myToggle = true
    @State private var newValue = 1
    
    var body: some View {
        VStack {
            Toggle(isOn: $myToggle) {
                Text(myToggle ? "Orange" : "Green")
            }
            .padding()
            Rectangle()
                .frame(width: 200, height: 150)
                .foregroundStyle(myToggle ? .orange : .green)
            Stepper(value: $newValue, in: 1...10) {
                Text("Stepper Value = \(newValue)")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
