//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI

struct FileView: View {
    let choice: String
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("\(choice)")
//                Text("This is a separate structure")
//                Text("that's stored in the same file")
                Spacer()
            }
            Spacer()
        }.background(Color.yellow)
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Spacer()
            
            Text("Choose Heads or Tails")
            
            NavigationLink(destination: FileView(choice: "Heads")) {
                Text("Heads")
            }
            
            
            Spacer()
            NavigationLink(destination: SeparateFile(passedData: "Tails")) {
                Text("Tails")
            }
            .navigationTitle("Flip a coin")
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}

/*
 swift 3.0 이전 프리뷰
 struct ContentView_Preview: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
