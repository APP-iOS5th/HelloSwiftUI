//
//  FormExample.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/9.
//

import SwiftUI

struct FormExample: View {
    @State var messageOne: String = ""
    @State var messageTwo: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Form {
                Text("This is the first Form")
                TextField("Type here", text: $messageOne)
            }
            
            Form {
                Text("This is the second Form")
                TextField("Type here", text: $messageTwo)
            }
            
            Text("First form text >> \(messageOne)")
            Text("Second form text >> \(messageTwo)")
        }
    }
}

#Preview {
    FormExample()
}
