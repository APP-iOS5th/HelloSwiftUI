//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by 조성빈 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedColor = Color.gray
    
    var body: some View {
        VStack (spacing: 28) {
            Rectangle().fill(selectedColor)
            Picker("Favorite Color", selection: $selectedColor, content: {
                Text("Red")
                    .tag(Color.red)
                Text("Blue")
                    .tag(Color.blue)
                Text("Green")
                    .tag(Color.green)
            })
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}

//#Preview {
//    ContentView()
//}

