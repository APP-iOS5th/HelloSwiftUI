//
//  LinkExample.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/9.
//

import SwiftUI

struct LinkExample: View {
    @State var message: String = "No Selection"
    
    var body: some View {
        VStack {
            Link(destination: URL(string: "https://www.apple.com")!, label: {
                Text("Apple")
            })
            
            Text("\(message)")
            
            Menu("Options") {
                Button("Open", action: openFile)
                Button("Find", action: findFile)
                Button("Delete...", action: deleteFile)
            }
            .menuOrder(.fixed) // MARK: menuOrder default: automatic
//            MultipleSpacer(multiple: 1)
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
