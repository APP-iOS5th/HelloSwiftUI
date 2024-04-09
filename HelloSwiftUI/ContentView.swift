//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by jinwoong Kim on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @FocusState private var dismissKeyboard: Bool
    
    var body: some View {
        VStack {
            TextField("Placeholder text", text: $message)
                .textFieldStyle(.roundedBorder)
                .autocorrectionDisabled()
                .textContentType(.emailAddress)
                .submitLabel(.done)
                .padding()
                .focused($dismissKeyboard)
            SecureField("Password", text: $message)
                .textFieldStyle(.roundedBorder)
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
