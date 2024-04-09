//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

struct ContentView: View {
    @State private var myColor = Color.gray
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(myColor)
            Text("Pick a color")
                .padding()
                .contextMenu {
                    Button("Red", action: {
                        myColor = Color.red
                    })
                    Button("Purple", action: purple)
                    Button("Green", action: green)
                }
        }
    }
    func purple() {
        myColor = Color.purple
    }
    func green() {
        myColor = Color.green
    }
}

#Preview {
    ContentView()
}
