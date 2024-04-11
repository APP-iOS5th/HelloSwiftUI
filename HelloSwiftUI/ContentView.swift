//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(Axis.Set.vertical, showsIndicators: false) {
            ForEach(0..<45) {
                Text("Item #\($0)")
            }
        }
    }}

#Preview {
    ContentView()
}
