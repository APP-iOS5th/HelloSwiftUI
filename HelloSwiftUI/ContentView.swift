//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이인호 on 4/8/24.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}
struct ContentView: View {
    @State private var message = ""
    @FocusState var dismissKeyboard: Bool
    
    var body: some View {
        VStack {
            TextField("Placeholder text", text: $message)
                .textFieldStyle(.roundedBorder)
                .autocorrectionDisabled(true)
                .textContentType(.emailAddress)
                .submitLabel(.done)
                .padding()
                .focused($dismissKeyboard)
            
            SecureField("Password", text: $message)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            TextEditor(text: $message)
                .focused($dismissKeyboard)
            
            Button("Hide Keyboard") {
                dismissKeyboard = false
            }
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
