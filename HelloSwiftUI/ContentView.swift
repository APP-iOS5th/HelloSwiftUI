//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by JIHYE SEOK on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var messageOne = ""
    @State var messageTwo = ""
    
    var body: some View {
        VStack (spacing: 20) {
            Form {
                Text("This is the first form")
                TextField("Type Here", text: $messageOne)
            }
            
            Form {
                Text("This is the second form")
                TextField("Type Here", text: $messageTwo)
            }
            Text("Form #1 : \(messageOne)")
            Text("Form #2 : \(messageTwo)")
        }
    }
}


#Preview {
    ContentView()
}

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
