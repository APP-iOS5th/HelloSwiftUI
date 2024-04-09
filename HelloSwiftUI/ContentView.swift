//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by mosi on 4/8/24.
//

import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    @State private var message = ""
    @FocusState var dismissKeyboard: Bool
    
    var body: some View {
        VStack {
            //일반텍스트상자처럼 공개된 텍스트박스
            TextField("Placeholder text", text: $message)
                .textFieldStyle(.roundedBorder)
                //(철자,문자)자동수정 옵션
                .disableAutocorrection(true)
                //입력창의 방식 제한(아이디,비밀번호,이메일)
                .textContentType(.emailAddress)
                //.keyboardType(입력방식)
                //.default, .emailAddress, .decimalPad, numbersAnadPunctuation
                //입력을 완료했을때 Enter키 변경
                .submitLabel(.done)
                .padding()
                .focused($dismissKeyboard)
            
            //비밀번호창처럼 비공개 텍스트박스
            SecureField("Password", text: $message)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            //텍스트 에디터
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
    static var previews: some View {
        ContentView()
    }
 }
 */
