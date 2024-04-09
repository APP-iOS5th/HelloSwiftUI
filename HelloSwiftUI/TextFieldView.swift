//
//  TextFieldView.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/9/24.
//

import SwiftUI


@available(iOS 15.0, *)
struct TextFieldView: View {
    
    @State private var message = ""
    @FocusState var dissmissKeyboard: Bool
    
    var body: some View {
        TextField("Placeholder Text", text: $message)
            .textFieldStyle(.roundedBorder)
            .autocorrectionDisabled(true)
            .textContentType(.emailAddress)
            .submitLabel(.done)
            .padding()
            .focused($dissmissKeyboard)
        
        SecureField("password Text", text: $message)
            .textFieldStyle(.roundedBorder)
            .padding()
        
        Button("Hide Keyboard") {
            dissmissKeyboard = false
        }
    }
}

#Preview {
    TextFieldView()
}
