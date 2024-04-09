//
//  FormWithSection.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/9/24.
//

import SwiftUI

struct FormWithSection: View {
    
    @State var flag = false
    @State var message = ""
    
    var body: some View {
        VStack {
//            헤더는 모두 대문자
            Form {
                
                Section {
                    Text("This is Section has no header")
                }
                
                Section("Just a Header") {
                    Text("This is Section uses a simple header")
                }
                
                Section {
                    Text("This is Section uses a simple fotter")
                } footer: {
                    Text("Just a footer")
                }
                
                Section {
                    Text("This is Section uses Both a header and fotter")
                } header: {
                    Text("The header")
                } footer: {
                    Text("The footer")
                }
                
            }
            
            Form {
                Text("This is a Form")
                Toggle(isOn: $flag, label: {
                    Text("Click Me")
                })
            }
            
            //ex) 약관같은 경우..?
            GroupBox(label: Text("Group Box")) {
                Text("This is a GroupBox")
                Toggle(isOn: $flag, label: {
                    Text("Click Me")
                })
                
                TextField("Type here", text: $message)
            }
            
        }//VStack
    }
}

#Preview {
    FormWithSection()
}
