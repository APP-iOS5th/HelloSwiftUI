//
//  TextFieldExample.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/9.
//

import SwiftUI

struct TextFieldExample: View {
    
    @State private var message: String = ""
    @State private var confirmNumber: String = ""
    @FocusState var dismisskeyboard: Bool // MARK: 키보드를 내리는 Event를 위한
    
    var body: some View {
        VStack {
            TextField("Placeholder Text", text: $message)
                .textFieldStyle(.roundedBorder)
                .autocorrectionDisabled() // 자동완성 비활성화
                .submitLabel(.done) // 키보드 오른쪽 아래 표시할 버튼
                .focused($dismisskeyboard)
                
            SecureField("Confirm Number", text: $confirmNumber)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
                .focused($dismisskeyboard)
            
            Button("Hide Keyboard") {
                dismisskeyboard = false
            }
        }
        .padding()
    }
}

#Preview {
    TextFieldExample()
}
