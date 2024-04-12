//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이서경 on 2024/04/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Local X origin = \(geometry.frame(in: .local).origin.x)")
                Text("Local Y origin = \(geometry.frame(in: .local).origin.y)")
                Divider()
                Text("Global X origin = \(geometry.frame(in: .global).origin.x)")
                Text("Global Y origin = \(geometry.frame(in: .global).origin.y)")
            }
        }
        .background(Color.yellow)
//        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
