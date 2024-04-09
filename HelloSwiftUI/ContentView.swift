//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황규상 on 4/8/24.
//
// 규상이 바부

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var password = ""
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
            
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding()
                .focused($dismissKeyboard)
            
            TextEditor(text: $message)
                .focused($dismissKeyboard)
            
            Button("Hine Keyboard") {
                dismissKeyboard = false
            }
        }
    }
}

#Preview {
    ContentView()
}

/**
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews:PreviewProvider {
    static var previews: some View {
            ContentView()
    }
 }
 */
