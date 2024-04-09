//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

struct ContentView: View {
    @State var message = ""
    var body: some View {
        VStack {
            Link(destination: URL(string: "https:/apple.com")!, label: {
                Text("Link")
            })
            Text(message).padding()
            Menu("Options") {
                Button("Open", action: openFile)
                Button("Find", action: findFile)
                Button("Delete", action: deleteFile)
                Menu("Submenus") {
                    Button("Clear", action: clearFile)
                }
            }.menuOrder(.fixed)
        }
    }
    func openFile() {
        message = "Open chosen"
    }
    func findFile() {
        message = "Find chosen"
    }
    func deleteFile() {
        message = "Delete chosen"
    }
    func clearFile() {
        message = "Clear chosen"
    }
}

#Preview {
    ContentView()
}
