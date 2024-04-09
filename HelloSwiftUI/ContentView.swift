//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by JIHYE SEOK on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var message = ""
    @State var flag = false
    
    var body: some View {
        VStack (spacing: 20) {
            Form {
                Section {
                    Text("This is Section has no Header")
                }
                Section ("Just a Header") {
                    Text("This is Section has no Header")
                }
                Section {
                    Text("This is Section has no Header")
                } footer: {
                    Text("Just a Footer")
                }
                Section {
                    Text("This is Section has no Header")
                } header: {
                    Text("Header")
                } footer: {
                    Text("Footer")
                }
            }
            
            Form {
                Text("This is a Form")
                Toggle(isOn: $flag, label: {
                    Text("Click Me")
                })
            }
            
            GroupBox(label: Text("GroupBox")) {
                Text("This is a GroupBox")
                Toggle(isOn: $flag, label: {
                    Text("Click Me")
                })
                TextField("Type Here", text: $message)
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
