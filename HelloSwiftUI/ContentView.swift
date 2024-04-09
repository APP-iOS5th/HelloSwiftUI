//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI

@available(iOS 15.0, *) //iOS 15이상 버전부터 사용가능
struct ContentView: View {
    @State private var message = "" //받은 입력을 저장할 변수 지정
    @FocusState var dismissKeybord: Bool
    var body: some View {
        VStack(spacing: 28) {
            TextField("Placehokder text", text: $message) //택스트 필드
                .textFieldStyle(.roundedBorder) //텍스트 필드 스타일 변경
                .disableAutocorrection(true) //대문자 지정 true이면 비활성화
                .textContentType(.emailAddress) // 키보드 패드에 맞는 형식에 자판이 올라옴
                .submitLabel(.done) //텍스트 필드에 대해 특정 가상 키보드 유형 지정 done, send,join등등
                .padding()
                .focused($dismissKeybord)
                
            SecureField("Password", text: $message) //비밀번호입력할 때, 보안필드
                .textFieldStyle(.roundedBorder)
                .padding()
            
            TextEditor(text: $message) //여러 줄 입력할때
            
            Button("Hide Keyboard") {
                dismissKeybord = false
            }
            
        }
    }
}

#Preview {
    ContentView()
}
/*
Swift 3.0 이전 프리퓨
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
