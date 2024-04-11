//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이서경 on 2024/04/08.
//

import SwiftUI

struct FileView: View {
    var choice: String
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("You chose = \(choice)")
                Spacer()
            }
            Spacer()
        }.background(Color.yellow)
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Text("Choose Heads or Tails")
            NavigationLink(destination: FileView(choice: "Head")) {
                Text("Heads")
            }
            NavigationLink(destination: SeparateFile(passedData: "Tail")) {
                Text("Tails")
            }
            .navigationTitle("Flip a Coin")
        }
    }
}

#Preview {
    ContentView()
}
