//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이인호 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var message1 = ""
    @State private var message2 = ""
    
    var body: some View {
        VStack {
            Form {
                Text("This is the first Form")
                TextField("Type here", text: $message1)
            }
            Form {
                Text("This is the second Form")
                TextField("Type here", text: $message2)
                    .autocorrectionDisabled()
            }
            Text("Form #1 \(message1)")
            Text("Form #2 \(message2)")
        }
    }
}

#Preview {
    ContentView()
}
