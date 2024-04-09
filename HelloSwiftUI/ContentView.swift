//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

struct ContentView: View {
    @State var messageOne = ""
    @State var messageTwo = ""
    var body: some View {
        VStack (spacing: 20) {
            Form {
                Text("This is the first form")
                TextField("Type here", text: $messageOne)
            }
            Form {
                Text("This is the second form")
                TextField("Type here", text: $messageTwo)
            }
            Text("Form #1 = \(messageOne)")
            Text("Form #2 = \(messageTwo)")
        }
    }}

#Preview {
    ContentView()
}
