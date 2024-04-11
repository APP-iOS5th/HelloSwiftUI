//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 홍준범 on 4/8/24.
//

import SwiftUI


struct FileView: View {
    @Binding var choice: String
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("This is a separate structure")
                Text("That's stored in the same file")
                TextField("Type here:", text: $choice)
                Spacer()
            }
            Spacer()
        } .background(Color.yellow)
    }
}

struct ContentView: View {
    @State var message = ""
    var body: some View {
        NavigationStack {
            Text("Choose Heads or Tails")
            TextField("Type here:", text: $message)
            NavigationLink(destination: FileView(choice: $message)) {
                Text("Heads")
            }
            NavigationLink(destination: SeparateFile(passedData: "Tails")) {
                Text("Tails")
            }
            .navigationTitle("Flip a coin")
        }
    }
}


#Preview {
    ContentView()
}

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: som View {
 ContentView()
 }
 }
 */

