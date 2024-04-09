//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 박지혜 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    
    var body: some View {
        VStack {
            TextField("Placeholder text", text:$message)
                .textFieldStyle(.roundedBorder)
                .disableAutocorrection(true) // 자동완성 기능 끄기
                .textContentType(.emailAddress) // 키보드 타입
                .submitLabel(.done) // 제출 버튼
                .padding()
            
            // 보안 필드
            SecureField("Password", text: $message)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            
        }
    }
}


#Preview {
    ContentView()
}
