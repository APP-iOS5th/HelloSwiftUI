//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김형준 on 4/8/24.
//

import SwiftUI



import SwiftUI

extension Color {
    
}
    
struct ContentView: View {
    @State var message = ""

        var body: some View {
            VStack {
               

               

                Menu("Options") {
                    Button("Open", action: openFile)
                    Button("Find", action: findFile)
                    Button("Delete...", action: deleteFile)
                }
                
                
                Text(message).padding()
                
                
                Link(destination: /*@START_MENU_TOKEN@*/URL(string: "https://www.apple.com")!/*@END_MENU_TOKEN@*/, label: {
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
