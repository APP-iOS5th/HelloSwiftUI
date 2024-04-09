//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by mosi on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var flag1 = false
    @State var flag2 = false
    @State var message = ""
    
    var body: some View {
        VStack(spacing: 5) {
            Form{
                Section {
                    Text("This is Section has no header")
                }
                Section("Just a Header") {
                    Text("This Section uses a simple header")
                }
                Section {
                    Text("This Section uses a simple footer")
                } footer: {
                    Text("Just a Footer")
                }
                Section {
                    Text("This Section uses both a header and footer")
                } header: {
                    Text("The Header")
                } footer: {
                    Text("The Footer")
                }
                
                Form {
                    Text("This is a Form")
                    Toggle(isOn: $flag1, label: {
                        Text("Click me")
                    })
                }
                
                GroupBox(label: Text("Group Box")) {
                    Text("This is a Group box")
                    Toggle(isOn: $flag2, label : {
                        Text("Click me")
                    })
                    TextField("Type here", text: $message)
                }
            }
        }
    }
}


#Preview {
    ContentView()
}

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
 }
 */
