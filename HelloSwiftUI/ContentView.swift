//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedColor = Color.gray
    var body: some View {
        VStack {
            Rectangle().fill(selectedColor)
            Picker("Favorite Color", selection: $selectedColor, content: {
                Text("Red").tag(Color.red)
                Text("Green").tag(Color.green)
                Text("Blue").tag(Color.blue)
            })
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}

#Preview {
    ContentView()
}
