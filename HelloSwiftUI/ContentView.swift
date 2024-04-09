//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}

@available(iOS 15.0, *)
struct ContentView: View {
    @State var messageOne = ""
    @State var messageTwo = ""
    
    
    var body: some View {
        VStack (spacing: 0) {
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
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
