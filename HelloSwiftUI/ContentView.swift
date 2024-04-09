//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    @State var flag: Bool = false
    @State var message: String = ""
    
    var body: some View {
        VStack {
            Form{
                Section {
                    Text("This is Section has no Header")
                }
                
                Section("Just a Header") {
                    Text("This is Section uses a simple Header")
                }
                
                Section{
                    Text("This Section uses a simple footer")
                } footer: {
                    Text("Just a Footer")
                }
                
                Section {
                    Text("This Section uses both header and footer")
                } header: {
                    Text("The header")
                } footer: {
                    Text("The footer")
                }
            }
            
            Form {
                Text("This is a Form")
                Toggle(isOn: $flag) {
                    Text("Click Me")
                }
            }
            
            GroupBox(label: Text("Group Box")) {
                Text("This  is a group box")
                Toggle(isOn: $flag) {
                    Text("Click Me")
                }
                TextField("Type here" , text: $message)
            }
            
            
            
        }
    }
    
}

#Preview {
    ContentView()
}

/*
 swift 3.0 이전 프리뷰
 struct ContentView_Preview: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
