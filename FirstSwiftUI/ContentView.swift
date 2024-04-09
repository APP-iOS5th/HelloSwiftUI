//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by 조성빈 on 4/8/24.
//

import SwiftUI

//특정 버전 지원 제한 -> 15.0 버전 이하는 실행불가.
@available(iOS 15.0, *)
struct ContentView: View {

    @State private var message: String = ""
    
    var body: some View {
        VStack {
            Link(destination: /*@START_MENU_TOKEN@*/URL(string: "https://www.apple.com")!/*@END_MENU_TOKEN@*/, label: {
                Text("Apple")
            })
            
            Menu("Menu") {
                Button(action: {
                    iPhoneAction()
                }) {
                    Text("iPhone")
                }
                Button(action: {
                    MacAction()
                }) {
                    Text("Mac")
                }
                Button(action: {
                    iPadAction()
                }) {
                    Text("iPad")
                }
                Menu("Inside Menu") {
                    Button(action: {}) {
                        Text("iPhone 12")
                    }
                    Button(action: {}) {
                        Text("Mac 2")
                    }
                    Button(action: {}) {
                        Text("iPad2")
                    }
                }
            }
            
            Text(message)
            
        }
        .onAppear() {
            print("ContentView Load.")
        }
    }
    
    
    func iPhoneAction() {
        message = "iPhone Chosen"
    }
    
    func MacAction() {
        message = "Mac Chosen"
    }
    
    func iPadAction() {
        message = "iPad Chosen"
    }
    
}

//#Preview {
//    ContentView()
//}

