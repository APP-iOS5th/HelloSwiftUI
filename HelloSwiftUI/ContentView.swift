//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이서경 on 2024/04/08.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}

@available(iOS 15.0, *)
struct ContentView: View {
    @State private var message = ""
    @FocusState var dismissKeyboard: Bool
    
    var body: some View {
        VStack {
            TextField("Placeholder text", text: $message)
                .textFieldStyle(.roundedBorder)
                .disableAutocorrection(true)
                .textContentType(.emailAddress)
                .submitLabel(.done)
                .padding()
                .focused($dismissKeyboard)
            
            SecureField("Password", text: $message)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Button("Hide Keyboard") {
                dismissKeyboard = false
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
