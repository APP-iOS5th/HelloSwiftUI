//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by 조성빈 on 4/8/24.
//

import SwiftUI

//특정 버전 지원 제한 -> 15.0 버전 이하는 실행불가.
@available(iOS 15.0, *)
struct ContentView: View {
    
    @State private var message = ""
    @FocusState var dismissKeyBoard: Bool
    
    
    var body: some View {
        VStack {
            TextField("This is TF.", text: $message)
                .autocorrectionDisabled()
                .keyboardType(.emailAddress)
                .submitLabel(.done)
                .focused($dismissKeyBoard)
                .textFieldStyle(.roundedBorder)
                .frame(width: 200)
            
            SecureField("This is SecureTF.", text: $message)
                .textFieldStyle(.roundedBorder)
                .frame(width: 200)
            
            Button(action: {
                dismissKeyBoard = false
            }){
                Text("Hide KeyBoard")
            }
        }
    }
}

//#Preview {
//    ContentView()
//}

