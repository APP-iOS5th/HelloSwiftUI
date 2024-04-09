//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    @State private var message = ""
    @FocusState var dismissKeyboard: Bool
    var body: some View {
        VStack {
            TextField("Placeholder", text: $message)
                .textFieldStyle(.roundedBorder)
                .autocorrectionDisabled(false)
                .textContentType(.URL)
                .submitLabel(.go)
                .padding()
                .focused($dismissKeyboard)
            SecureField("Password", text: $message)
                .textFieldStyle(.roundedBorder)
                .padding()
            TextEditor(text: $message)
                .padding()
            Button("Hide Keyboard") {
                dismissKeyboard = false
            }
        }
    }
}

#Preview {
    ContentView()
}
