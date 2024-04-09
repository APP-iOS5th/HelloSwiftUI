//
//  TextField.swift
//  HelloSwiftUI
//
//  Created by 임재현 on 4/9/24.
//

import SwiftUI

struct TextFieldView: View {
    @State private var message = ""
    var body: some View {
        VStack {
            TextField("Placeholder",text: $message)
                .textFieldStyle(.roundedBorder)
                .textContentType(.emailAddress)
                .submitLabel(.done)
                .padding()
                .disableAutocorrection(true)
            
            
            SecureField("Password", text: $message)
                .textFieldStyle(.roundedBorder)
                .padding()
            
        }
    }
}

#Preview {
    TextFieldView()
}
