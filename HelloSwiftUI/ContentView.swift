//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by jinwoong Kim on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectedColor = Color.gray
    
    var body: some View {
        VStack {
            Rectangle().fill(selectedColor)
            Picker("Color", selection: $selectedColor) {
                Text("Red").tag(Color.red)
                Text("Green").tag(Color.green)
                Text("Blue").tag(Color.blue)
                Text("Purple").tag(Color.purple)
            }
            .pickerStyle(.segmented)
        }
    }
}

#Preview {
    ContentView()
}
