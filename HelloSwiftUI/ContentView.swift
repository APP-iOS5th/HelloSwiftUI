//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이서경 on 2024/04/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(Axis.Set.vertical, showsIndicators: true) {
            ForEach(0..<50) {
                Text("Item #\($0)")
            }
        }
    }
}

#Preview {
    ContentView()
}
