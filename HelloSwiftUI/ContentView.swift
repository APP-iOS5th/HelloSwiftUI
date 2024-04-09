//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김형준 on 4/8/24.
//

import SwiftUI



struct ContentView: View {
    @State private var selectedColor = Color.gray
    var body: some View{
        VStack(spacing: 28) {
            Rectangle().fill(selectedColor)
            Picker("Favorite Color", selection: $selectedColor, content: {
                Text("Red").tag(Color.red)
                Text("Green").tag(Color.green)
                Text("blue").tag(Color.blue)
            })
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}
#Preview {
    ContentView()
}
