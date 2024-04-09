//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 어재선 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    var body: some View {
        VStack{
            TextField("Placeholder text", text: $message)
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

/*
 Swift 3.0이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
