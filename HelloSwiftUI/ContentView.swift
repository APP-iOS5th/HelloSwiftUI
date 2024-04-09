import SwiftUI

struct ContentView: View {
    @State var flag = false
    @State var message = ""
    
    var body: some View {
        VStack (spacing: 20) {
            //실습 1
//            Form {
//                Section {
//                    Text("This is Section has no header")
//                }
//                Section("Just a Header") {
//                    Text("This Section uses a simple header")
//                }
//                Section {
//                    Text("This Section uses a simple footer")
//                } footer: {
//                    Text("Just a Footer")
//                }
//                Section {
//                    Text("This Section uses both a header and footer")
//                } header: {
//                    Text("The header")
//                } footer: {
//                    Text("The footer")
//                }
//            }
            
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
                TextField("Type Here", text: $message)
            }
        }
    }
}


#Preview {
    ContentView()
}

