//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김형준 on 4/8/24.
//

import SwiftUI



import SwiftUI

struct ContentView:View {
    @State private var message = ""
    
    var body: some View {
        VStack {
            TextField("이메일을 입력하세요", text: $message)
                .textFieldStyle(.roundedBorder)
                .disableAutocorrection(true)
                .textContentType(.emailAddress)
                .submitLabel(.done)
                .padding()
            
            SecureField("Password", text: $message)
                .textFieldStyle(.roundedBorder)
                .padding()
            
        }
    }
}

#Preview {
    ContentView()
}
