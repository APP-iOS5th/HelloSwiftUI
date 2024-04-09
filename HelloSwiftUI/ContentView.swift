//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    @State private var message = "" //받은 입력을 저장할 변수 지정
    var body: some View {
        VStack(spacing: 28) {
            TextField("Placehokder text", text: $message) //택스트 필드
                .textFieldStyle(.roundedBorder) //텍스트 필드 스타일 변경
                .disableAutocorrection(true) //대문자 지정 true이면 비활성화
                .textContentType(.emailAddress) // 키보드 패드에 맞는 형식에 자판이 올라옴
                .submitLabel(.done) //텍스트 필드에 대해 특정 가상 키보드 유형 지정 done, send,join등둥
                .padding()
                
            SecureField("Password", text: $message) //비밀번호입력할 때, 보안필드
                .textFieldStyle(.roundedBorder)
                .padding()
            
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
