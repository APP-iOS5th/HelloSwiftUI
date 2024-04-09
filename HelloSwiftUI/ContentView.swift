//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 홍준범 on 4/8/24.
//

import SwiftUI

@available(iOS 15.0, *) // 15 이하로는 실행 안되게하는?


struct ContentView: View {
    @State var flag = false
    @State var message = ""
    var body: some View {
        VStack {
            Form {
                Section {
                    Text("This Section has no header")
                }
                Section ("Just a Header") {
                    Text("This Section uses a simple header")
                }
                    Section {
                        Text("This Section uses a simple footer")
                    } footer: {
                        Text("Just a footer")
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
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: som View {
 ContentView()
 }
 }
 */

