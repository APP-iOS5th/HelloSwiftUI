//
//  SectionExample.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/9.
//

import SwiftUI

struct SectionExample: View {
    
    @State var flag: Bool = true
    
    var body: some View {
        VStack(spacing: 20) {
            Form {
                Section {
                    Text("This is Section has no header")
                }
                Section("Just a Header") {
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
                Toggle(isOn: $flag) {
                    Text("Click me")
                }
            }
            
            GroupBox {
                Text("This is a Group Box")
                Toggle(isOn: $flag) {
                    Text("Click me")
                }
            } label: {
                Text("Group box")
            }
        }
    }
}

#Preview {
    SectionExample()
}
