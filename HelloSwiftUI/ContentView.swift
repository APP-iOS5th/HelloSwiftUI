//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 박지혜 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var message = ""
    
    var body: some View {
        VStack {
            Menu("Options") { // 메뉴가 펼쳐지는 방향으로 쌓임
                Button("Open", action: openFile)
                Button("Find", action: findFile)
                Button("Delete...", action: deleteFile)
            }
            .menuStyle(DefaultMenuStyle())
            .menuOrder(.fixed) // 글자 쌓이는 방향 고정
            
            Text(message).padding()
            
            Link(destination: URL(string: "https://www.apple.com")!, label: {
                Text("Apple")
            })
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
