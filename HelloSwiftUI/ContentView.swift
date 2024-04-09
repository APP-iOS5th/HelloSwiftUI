//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 육현서 on 4/8/24.
//



import SwiftUI

struct ContentView: View {
    @State var messageOne = ""
    @State var messageTwo = ""
    
    var body: some View {
        VStack (spacing: 20) {
            Form{
                Text("This is the first Form")
                TextField("Type here", text: $messageOne)
            }
            
            Form{
                Text("This is the second Form")
                TextField("Type here", text: $messageTwo)
            }
            Text("Form #1 = \(messageOne)")
            Text("Form #2 = \(messageTwo)")

        }
    }
}

#Preview {
    ContentView()
}
