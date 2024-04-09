//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 홍준범 on 4/8/24.
//

import SwiftUI
@available(iOS 15.0, *) // 15 이하로는 실행 안되게하는?
struct ContentView: View {
    @State private var message = ""
    @FocusState var dismissKeyboard: Bool
    var body: some View {
        VStack  {
            TextField("Placehloder text", text: $message) //달러사인(4)은 뷰에서 나온 텍스트가 메세지에 연결되게끔 바인딩시켜주는것
                .textFieldStyle(.roundedBorder)
                .disableAutocorrection(true)
                .textContentType(.emailAddress)
                .submitLabel(.send)
                .padding()
                .focused($dismissKeyboard)
            
            SecureField("Password", text: $message) //같은 메세지 바인딩이 되어있어서 연동됨
                .textFieldStyle(.roundedBorder)
                .padding()
            
            TextEditor(text: $message)
                
            
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
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: som View {
 ContentView()
 }
 }
 */

