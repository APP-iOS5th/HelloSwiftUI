//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이인호 on 4/8/24.
//

import SwiftUI


struct FileView: View {
    @Binding var choice: String
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                TextField("Type here", text: $choice)
                Spacer()
            }
            Spacer()
        }.background(Color.yellow)
    }
}

struct ContentView: View {
    @State var message = ""
    
    var body: some View {
        NavigationStack {
            Text("Choose Heads or Tails")
            NavigationLink(destination: FileView(choice: $message)) {
                Text("Heads")
            }
            NavigationLink(destination: SeperateFile(passedData: "Tails")) {
                Text("Tails")
            }
            .navigationTitle("Flip a coin")
        }
    }
}

#Preview {
    ContentView()
}
