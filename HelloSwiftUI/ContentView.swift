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
    @State private var sliderValue = 1.0
    
    var body: some View {
        VStack {
            Slider(value: $sliderValue, in: 1...10)
                .padding()
            Text("\(sliderValue)")
        }
    }
}

#Preview {
    ContentView()
}
