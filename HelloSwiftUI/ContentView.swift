//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}

struct ContentView: View {
    @State var message = ""
    
    var body: some View {
        VStack {
            Link(destination: URL(string: "https://www.apple.com")!, label: { Text("Apple")})
            
            Text(message).padding()
            
            Menu("Option") {
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
