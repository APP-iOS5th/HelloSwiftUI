//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황규상 on 4/8/24.
//
// 규상이 바부

import SwiftUI

/// GPT가 알려준 건데.. 복습할 때, 뜯어보기~
struct LimitInputModifier: ViewModifier {
    let limit: Int
    
    func body(content: Content) -> some View {
        content
            .onReceive(NotificationCenter.default.publisher(for: UITextField.textDidChangeNotification)) { notification in
                if let textField = notification.object as? UITextField, let text = textField.text, text.count > limit {
                    textField.text = String(text.prefix(limit))
                }
            }
    }
}

extension View {
    func limitInput(to limit: Int) -> some View {
        self.modifier(LimitInputModifier(limit: limit))
    }
}

struct ContentView: View {
    @State private var message = ""
    @State private var password = ""
    @State private var email = ""
    
    // Simple email validation, 이렇게 하는건 아닐 듯.. (방법 생각해보기)
    var isEmailValid: Bool {
            return email.contains("@") && email.contains(".")
        }
        
    
    var body: some View {
        VStack {
            TextField("Placeholder text", text: $message)
                .limitInput(to: 10) // 글자 수 제한
                .textFieldStyle(.roundedBorder)
                .autocorrectionDisabled(true)
                .textContentType(.emailAddress)
                .submitLabel(.done)
                .padding()
            
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding()
                
            TextField("Placeholder text", text: $email)
                .textFieldStyle(.roundedBorder)
                .autocorrectionDisabled(true)
                .textContentType(.emailAddress)
                .submitLabel(.done)
                .padding()
                .background(isEmailValid ? Color.green.opacity(0.3) : Color.red.opacity(0.3))
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
