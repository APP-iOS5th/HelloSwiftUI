//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}

struct ContentView: View {
    @State private var selectedColor = Color.gray
    
    var body: some View {
        VStack(spacing: 28) {
            Rectangle()
                .fill(selectedColor)
            Picker("Favorite Color" ,selection: $selectedColor) {
                Text("Red")
                    .tag(Color.red)
                Text("Green")
                    .tag(Color.green)
                Text("Blue")
                    .tag(Color.blue)
            }
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}

#Preview {
    ContentView()
}

/*
 swift 3.0 이전 프리뷰
 struct ContentView_Preview: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
