//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

struct ContentView: View {
    @State var flag = false
    @State var message = ""
    var body: some View {
        VStack (spacing: 20) {
            Form {
                Section {
                    Text("This is a section has no header")
                }
                Section("Just a Header") {
                    Text("This section uses a simple header")
                }
                Section {
                    Text("This section uses a simple footer")
                } footer: {
                    Text("Just a Footer")
                }
                Section {
                    Text("This section use both a header and a footer")
                } header: {
                    Text("The Header")
                } footer: {
                    Text("The Footer")
                }
                
            }
            
            Form {
                Text("This is a Form")
                Toggle(isOn: $flag, label: {
                    Text("Click me")
                })
            }
            .frame(maxHeight: 150)
            
            GroupBox(label: Text("Group Box")) {
                Text("This is a Group Box")
                Toggle(isOn: $flag, label: {
                    Text("Click me")
                })
                TextField("Type here", text: $message)
                    .disabled(flag)
            }
        }
    }}

#Preview {
    ContentView()
}
