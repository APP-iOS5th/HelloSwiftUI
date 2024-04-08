//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI

//아이콘 추가하기
struct ContentView: View {
    var body: some View {
        VStack {
            Label("Text", systemImage: "clock.circle").font(.title)
            
            //내가 추가한 이미지를 Assets파일에서 불러와서 출력
            Label {
                Text("No modifiers")
            } icon: {
                Image("clock-solid")
                    .resizable()//아이콘 크기를 작게 수정해줌
                    .frame(width: 20.0, height: 20.0)
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
