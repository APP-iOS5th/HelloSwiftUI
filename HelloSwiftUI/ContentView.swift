//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    @State private var message = ""
    @FocusState var dismissKeyboard: Bool
    
    var body: some View {
        VStack {
            TextField("Placeholder text", text: $message)
                .textFieldStyle(.roundedBorder)
//                .autocorrectionDisabled(true)//자동철자수정 사용 여부
                .disableAutocorrection(true)//자동철자수정 사용 여부
                .textContentType(.emailAddress)
                .submitLabel(.done)
                .padding()
                .focused($dismissKeyboard) // 해당 텍스트 필드의 키보드 포커스 제거
                
                
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

/*
 swift 3.0 이전 프리뷰
 struct ContentView_Preview: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
