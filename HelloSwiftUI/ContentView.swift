//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 육현서 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var message = ""
    
    var body: some View {
        VStack {
            Link(destination: /*@START_MENU_TOKEN@*/URL(string: "https://www.apple.com")!/*@END_MENU_TOKEN@*/, label: {
                Text("apple")
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


#Preview {
    ContentView()
}
 
