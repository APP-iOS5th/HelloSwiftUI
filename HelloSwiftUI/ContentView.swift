//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    @State var flag = false
    @State var message =  ""
    
    var body: some View {
        VStack (spacing: 20){
            Form {
                Section { //헤더가 없는 Section
                    Text("This is Section has no header")
                }
                Section("Just a Header") {
                    Text("This is Section uses a simple header")
                }
                Section {
                    Text("This is Section uses a simple footer")
                } footer: {
                    Text("Just a Footer")
                }
                Section {
                    Text("This is Section uses both a header and footer")
                } header: {
                     Text("The header")
                } footer: {
                    Text("the footer")
                }
            }
            Form {
                Text("This is a Form")
                Toggle(isOn: $flag, label: {
                    Text("Click me")
                })
            }
            GroupBox(label: Text("Group Box")) {
                Text("This is a Group box")
                Toggle(isOn: $flag, label: {
                    Text("Click me")
                })
                TextField("Type here", text: $message)
            }
        }
    }
}

#Preview {
    ContentView()
}
/*
Swift 3.0 이전 프리퓨
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
