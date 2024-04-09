//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 박지혜 on 4/8/24.
//

import SwiftUI

// 버전 컨트롤(버전 15 아래는 실행되지 않음)
@available(iOS 15.0, *)
struct ContentView: View {
    @State private var message = ""
    @FocusState var dismissKeyboard: Bool
    
    var body: some View {
        VStack {
            TextField("Placeholder text", text:$message)
                .textFieldStyle(.roundedBorder)
//                .disableAutocorrection(true) // 자동완성 기능 끄기
                .autocorrectionDisabled(true) // 자동완성 기능 끄기
                .textContentType(.emailAddress) // 키보드 타입
                .submitLabel(.done) // 제출 버튼
                .padding()
                .focused($dismissKeyboard)
            
            // 보안 필드
            SecureField("Password", text: $message)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            // 넓은 문장 입력기
            TextEditor(text: $message)
            
            // 키보드 숨기기 버튼
            Button("Hide Keyboard") {
                dismissKeyboard = false
            }
            
            
        }
    }
}


#Preview {
    ContentView()
}
