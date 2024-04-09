//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황민경 on 4/8/24.
//

import SwiftUI

extension Color{
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}

struct ContentView: View {
    @State private var message = ""
    var body: some View {
        VStack {
            TextField("Placeholder text", text: $message)
                .textFieldStyle(.roundedBorder)
                .disableAutocorrection(true)//자동 완성 끄기
                .textContentType(.emailAddress)//자판기 스타일 지정
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
 Swift 3.0 이전 프리뷰
 struct ContentView_Privews: PreviewProvider {
    static var previews: some view {
        ContentView()
    }
 }
 */
