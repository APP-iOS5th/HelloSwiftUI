//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI

struct FileView: View {
    @Binding var choice: String
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                TextField("Type here:", text: $choice)
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
    @State var message: String = "basic choice"
    
    var body: some View {
        NavigationStack {
            Spacer()
            
            TextField("Type hear: ", text: $message)
                .padding()
            NavigationLink(destination: FileView(choice: $message )) {
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
