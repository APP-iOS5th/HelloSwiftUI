//
//  TextField.swift
//  HelloSwiftUI
//
//  Created by 임재현 on 4/9/24.
//

import SwiftUI


struct TextFieldView: View {
    @State private var message = ""
    @FocusState var dismissKeyboard: Bool
    var body: some View {
        VStack {
            TextField("Placeholder",text: $message)
                .textFieldStyle(.roundedBorder)
                .autocorrectionDisabled(true)
                .textContentType(.emailAddress)
                .submitLabel(.done)
                .padding()
                .disableAutocorrection(true)
                .focused($dismissKeyboard)
            
            
            SecureField("Password", text: $message)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            
            TextEditor(text: $message)
            
            
            Button("Hide Keyboard") {
                dismissKeyboard = false
            }
            
        }
    }
}

#Preview {
    TextFieldView()
}
