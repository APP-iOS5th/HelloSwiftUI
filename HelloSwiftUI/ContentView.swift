//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI


@available(iOS 15.0, *)  //ios 15 이상에서 가능.
struct ContentView: View {
    @State private var message = ""
    @FocusState var dismissKeyboard: Bool
    var body: some View {
        VStack {
            
            
            TextField("Placeholder text", text: $message)
                .textFieldStyle(.roundedBorder)
                .disableAutocorrection(true)
                .padding()
                .submitLabel(.done) //리턴키에 뜨는 문구.
                .focused($dismissKeyboard)
            
            SecureField("Password", text: $message)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            TextEditor(text: $message)
            
            Button ("Hide Keyboard") {
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
 static var previews: some View {
 ContentView()
 }
 }
 */
