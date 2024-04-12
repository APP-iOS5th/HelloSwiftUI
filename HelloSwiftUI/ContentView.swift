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
                Text("Width = \(geometry.size.width)")
                Text("Height = \(geometry.size.height)")
            }
        }
        .background(Color.yellow)
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
