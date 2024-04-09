//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by JIHYE SEOK on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    
    @State private var message = ""
    
    var body: some View {
        VStack {
            TextField("Placeholder Text", text: $message)
                .textFieldStyle(.roundedBorder)
                .disableAutocorrection(true) // 자동완성 off
                .textContentType(.emailAddress)
                .submitLabel(.done) // 키보드 Enter 버튼 모양
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
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
