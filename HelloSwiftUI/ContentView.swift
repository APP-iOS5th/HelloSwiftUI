//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 박지혜 on 4/8/24.
//

import SwiftUI

class ShareString: ObservableObject {
    @Published var message = ""
}

struct FileView: View {
//    @Binding var choice: String // ContentView와 binding
    @EnvironmentObject var choice: ShareString
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                TextField("Type here: ", text: $choice.message)
//                Text("You chose = \(choice)")
                Spacer()
            }
            Spacer()
        }.background(Color.yellow)
    }
}

struct ContentView: View {
//    @State var message = ""
    @StateObject var showMe = ShareString()
    
    var body: some View {
        NavigationStack {
            TextField("Type here: ", text: $showMe.message)
            NavigationLink(destination: FileView()) {
                Text("Heads")
            }
            NavigationLink(destination: SeparateFile()) {
                Text("Tails")
            }
            .navigationTitle("Flip a Coin")
        }
        .environmentObject(showMe)
    }
}


#Preview {
    ContentView()
}
