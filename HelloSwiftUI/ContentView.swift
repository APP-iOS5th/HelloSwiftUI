//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SungWoonLee on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack  {
            Label("Text", systemImage: "clock.circle").font(.title) //아이콘 넣기 sf~에서 이름 보고 넣기. "text", 이후 system~("") 까지. 모디파이어는 크기 때문에 붙인 것.
            Label {
                Text("No modifiers")
            } icon: {
                Image("clock-solid")
                    .frame(width: 20.0, height: 20.0)
            }//Assets에 이미지를 추가하고 불러오는 방법. 난 추가 안해놓음..
        }
    }
}
#Preview {
    ContentView()
}

/*
 
 Swift 3.0 이전 프리뷰
 struct ContentView)Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 
 */
