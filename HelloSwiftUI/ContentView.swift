//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 어재선 on 4/8/24.
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
            NavigationLink(destination: FileView(choice: "Heads")) {
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
 Swift 3.0이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
