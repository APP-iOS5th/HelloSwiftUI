//
//  UseLink.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/9/24.
//

import SwiftUI

struct UseLink: View {
    
    @State var message = ""
    
    var body: some View {
        
        VStack {
            
            //Link
            Link(destination: URL(string: "https://www.apple.com")!) {
                Text("Apple")
            }
            
            Text(message).padding()
            
            //Menu
            Menu("Options") {
                Button("Open", action: openFile)
                Button("Find", action: findFile)
                Button("Delete", action: deleteFile)
            }.menuOrder(.fixed) //메뉴의 순서 모디파이어
            
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
    UseLink()
}
