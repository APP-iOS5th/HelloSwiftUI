//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by 조성빈 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
    
    var body: some View {
        VStack {
            TextField("This is TF.", text: $message)
                .autocorrectionDisabled()
                .keyboardType(.emailAddress)
                .submitLabel(.done)
                .textFieldStyle(.roundedBorder)
                .frame(width: 200)
            
            SecureField("This is SecureTF.", text: $message)
                .textFieldStyle(.roundedBorder)
                .frame(width: 200)
        }
    }
}

//#Preview {
//    ContentView()
//}

