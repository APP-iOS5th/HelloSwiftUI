//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    @State var message = ""

        
    var body: some View {
        VStack {
            
            Link(destination: URL(string: "https://www.apple.com")!, label: {
                Text("Apple")
            })
            
            Text(message).padding()
            
            Menu("Options") {
                Button("Open", action: openFile)
                Button("Find", action: findFile)
                Button("Del", action: deleteFile)

            }
        }
    }
    func openFile() {
        message = "Open File"
        
    }
    func findFile() {
        message = "Find File"
        
    }
    func deleteFile() {
        message = "del File"
    }
}

#Preview {
    ContentView()
}

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
