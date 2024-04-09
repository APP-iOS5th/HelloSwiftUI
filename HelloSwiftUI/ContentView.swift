//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 어재선 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var flag = false
    @State var message = ""
    var body: some View {
        VStack (spacing: 20){
            Form {
                Section{
                    Text("This is Section has no header")
                }
                Section("Just a. eader"){
                    Text("This is Section uses a simple header")
                }
                Section{
                    Text("This is Section uses a simple footer")
                } footer: {
                    Text("Just a. footer")
                }
                Section{
                    Text("This section uses both a header and gooter")
                } header: {
                    Text("The header")
                } footer: {
                    Text("The footer")
                }
            }
            
            Form {
                Text("This is.  Form")
                Toggle(isOn: $flag, label: {
                    Text("Click me")
                })
            }
            
            GroupBox(label: Text("Group Box")){
                Text("This is. Group box")
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
 Swift 3.0이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
