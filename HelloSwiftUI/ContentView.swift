//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by John Yun on 4/8/24.
//

import SwiftUI


struct FileView: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("This is a separate structure")
                Text("that's stored in the same file")
                Spacer()
            }
            Spacer()
        }.background(Color.cyan)
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: FileView()) {
                Text("Send a message")
            }
        }
    }
}

#Preview {
    ContentView()
}
