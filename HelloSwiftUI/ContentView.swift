//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이서경 on 2024/04/08.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}

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
                Button("Delete...", action: deleteFile)
            }
        }
    }
    
    func openFile() {
        message = "Open chosen"
    }
    
    func findFile() {
        message = "Find chosen"
    }
    
    func deleteFile() {
        message = "Delete chosen"
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
