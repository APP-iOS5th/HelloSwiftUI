//
//  TextFieldView.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/9/24.
//

import SwiftUI

struct TextFieldView: View {
    
    @State private var message = ""
    
    var body: some View {
        TextField("Placeholder Text", text: $message)
            .textFieldStyle(.roundedBorder)
            .disableAutocorrection(true)
            .textContentType(.emailAddress)
            .submitLabel(.done)
            .padding()
        
        SecureField("password Text", text: $message)
            .textFieldStyle(.roundedBorder)
            .padding()
    }
}

#Preview {
    TextFieldView()
}
