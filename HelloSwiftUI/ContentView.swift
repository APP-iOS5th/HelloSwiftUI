//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    @State var messageOne = ""
    @State var messageTwo = ""
    
    var body: some View {
        VStack {
            Form {
             Text("This is the first Form")
                TextField("Type here", text: $messageOne)
            }
            
            Form {
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

/*
 swift 3.0 이전 프리뷰
 struct ContentView_Preview: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
