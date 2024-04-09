//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황민경 on 4/8/24.
//

import SwiftUI

extension Color{
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}

@available(iOS 15.0, *)
struct ContentView: View {
    @State var message = ""
    var body: some View {
        VStack {
            
            Menu("Option"){
                Button("Open", action: openFile)
                Button("Find", action: findFile)
                Button("Delete...", action: deleteFile)
            }
            .menuStyle(DefaultMenuStyle())
            .menuOrder(.fixed)
            
            Text(message).padding()
            
            Link(destination: URL(string: "https://www.apple.com")!, label: {
                Text("Apple")
            })
        }
    }
    func openFile(){
        message = "Open chosen"
    }
    func findFile(){
        message = "Find chosen"
    }
    func deleteFile(){
        message = "Delete chosen"
    }
}

#Preview {
    ContentView()
}
/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Privews: PreviewProvider {
    static var previews: some view {
        ContentView()
    }
 }
 */
