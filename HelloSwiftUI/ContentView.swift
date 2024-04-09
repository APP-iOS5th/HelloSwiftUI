//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    
    var body: some View {
        VStack {
            TextField("Placeholder text", text: $message)
                .textFieldStyle(.roundedBorder)
                .disableAutocorrection(true)//자동철자수정 사용 여부
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
 swift 3.0 이전 프리뷰
 struct ContentView_Preview: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
