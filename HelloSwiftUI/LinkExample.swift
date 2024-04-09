//
//  LinkExample.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/9.
//

import SwiftUI

struct LinkExample: View {
    @State var message: String = ""
    
    var body: some View {
        VStack {
            MultipleSpacer(multiple: 1)
            Link(destination: URL(string: "https://www.apple.com")!, label: {
                Text("Apple")
            })
            
            MultipleSpacer(multiple: 1)
            Text("\(message)")
            MultipleSpacer(multiple: 1)
            
            Menu("Options") {
                Button("Delete...", action: deleteFile)
                Button("Find", action: findFile)
                Button("Open", action: openFile)
            }
            MultipleSpacer(multiple: 1)
        }
        .padding()
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
    LinkExample()
}
