//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 어재선 on 4/8/24.
//

import SwiftUI
@available(iOS 15.0, *)
struct ContentView: View {
    @State private var message = ""
    @FocusState var dismissKeyboard: Bool
    var body: some View {
        VStack{
            TextField("Placeholder text", text: $message)
                .textFieldStyle(.roundedBorder)
                .autocorrectionDisabled(true)
                .textContentType(.emailAddress)
                .submitLabel(.done)
                .padding()
                .focused($dismissKeyboard)
            
            SecureField("Password", text: $message)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            TextEditor(text: $message)
            Button("Hide Keyboard"){
                dismissKeyboard = false
            }
            
        }
    }
}

#Preview {
    ContentView()
}

/*
 Swift 3.0이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
