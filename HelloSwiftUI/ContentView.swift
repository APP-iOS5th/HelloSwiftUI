//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황민경 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var flag = false
    @State var message = ""
    var body: some View {
        VStack {
            Form{
                Section {
                    Text("This is Section has no header")
                }
                Section("Just a Header") {
                    Text("This Section uses a simple header")
                }
                Section{
                    Text("This Section uses a simple footer")
                } footer: {
                    Text("Just a Footer")
                }
                Section {
                    Text("This Section uses both a header and footer")
                } header: {
                    Text("The header")
                } footer: {
                    Text("The footer")
                }
            }
            Form {
                Text("This is a Form")
                Toggle(isOn: $flag, label: {
                    Text("Click me")
                })
                .disabled(flag) // 비활성화
            }
            GroupBox(label: Text("Group Box")) {
                Text("This is a Group Box")
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
 Swift 3.0 이전 프리뷰
 struct ContentView_Privews: PreviewProvider {
    static var previews: some view {
        ContentView()
    }
 }
 */
