//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이인호 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    
    var body: some View {
        VStack {
            Menu("options") {
                Button("Open", action: openFile)
                Button("Find", action: findFile)
                Button("Delete", action: deleteFile)
            }
            .menuStyle(DefaultMenuStyle())
            .menuOrder(.fixed)
            
            Text(message).padding()
            
            Link(destination: URL(string: "https://www.apple.com")!) {
                Text("Apple")
            }
        }
    }
    
    func openFile() {
        message = "Open"
    }
    
    func findFile() {
        message = "Find"
    }
    
    func deleteFile() {
        message = "Delete"
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
