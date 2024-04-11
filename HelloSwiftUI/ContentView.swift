//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

struct FileView: View {
    var choice: String
    
    var body: some View {
        VStack {
            Text("Selected = \(choice)")
        }
    }
}
struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: FileView(choice: "Head")) {
                Text("Select Head")
            }
            NavigationLink(destination: FileView(choice: "Second")) {
                Text("Select Second")
            }
        }
    }}

#Preview {
    ContentView()
}
