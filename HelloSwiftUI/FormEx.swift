//
//  FormEx.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/9/24.
//

import SwiftUI

struct FormEx: View {
    
    @State var messageOne = ""
    @State var messageTwo = ""
    
    
    var body: some View {
        VStack {
            
            Form {
                Text("This is the first Form")
                TextField("Type here", text: $messageOne)
            }
            
            Form {
                Text("This is the second FOrm")
                TextField("Type here", text: $messageTwo)
            }
            Text("Form #1 = \(messageOne)")
            Text("Form #1 = \(messageTwo)")
            
        }//VStack
    }
}

#Preview {
    FormEx()
}
