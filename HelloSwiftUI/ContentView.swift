//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Yachae on 4/8/24.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}


@available(iOS 15.0, *)
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
            .menuOrder(.fixed)
        }
    }
    
    func openFile() {
        message = "open chosen"
    }
    
    func findFile() {
        message = "Find chosen"
    }
    
    func deleteFile() {
        message = "Delte chosen"
    }
    
}
#Preview {
    ContentView()
}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
