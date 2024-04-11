//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이서경 on 2024/04/08.
//

import SwiftUI

struct ContentView: View {
    @State var move = true
    var body: some View {
        VStack {
            Text("A Text View")
                .offset(x: move ? 100 : 0, y: move ? 100 : 0)
                .animation(.default, value: move)
            Toggle(isOn: $move, label: {
                Text("Toggle me")
            })
        }
    }
}

#Preview {
    ContentView()
}
