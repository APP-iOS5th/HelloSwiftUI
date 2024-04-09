//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    @State var message = ""
    
    var body: some View {
        VStack {
            Menu("Option") {
                Button("Open", action: openFile)
                Button("Find", action: findFile)
                Button("Delete....", action: deleteFile)
            }
            .menuStyle(.button)
            .menuOrder(.fixed)
            
            Text(message)
                .padding()
            
            Link(destination: URL(string: "https://www.apple.com")!, label: {
                Text("Apple")
            })
            
            
        }
    }
    
    func openFile() {
        message = "Open Chosen"
    }
    
    func findFile() {
        message = "Find Chosen"
    }
    
    func deleteFile() {
        message = "Delete Chosen"
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
