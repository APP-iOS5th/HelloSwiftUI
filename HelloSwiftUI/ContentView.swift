//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황규상 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ///Vertical Stack (default: center)
        ///수직 스택으로, 자식 뷰들을 수직(위에서 아래로) 방향으로 정렬.
        VStack {
            Text("위")
            ///Horizontal Stack
            ///수평 스택으로, 자식 뷰들을 수평(왼쪽에서 오른쪽으로) 방향으로 정렬.
            HStack {
                Text("왼쪽")
                Text("오른쪽")
            }
            ///Z-Axis Stack
            /*깊이 스택으로, 자식 뷰들을 Z축(앞에서 뒤로) 방향으로 쌓음.
             뷰들을 서로 위에 놓고 싶을 때 사용.
             예를 들어, 배경 위에 텍스트를 놓고 싶을 때 사용할 수 있음. */
            ZStack {
                Text("배경")
                Text("전경")
            }
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                print("button1 click")
            }
            Button(action: {
                print("button2 click")
            }, label: {
                Text("Button")
            })
        }
    }
}

/// 계속 개발중, 6월이 지나면 어떻게 바뀔지 모름.
#Preview {
    ContentView()
}

/**
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews:PreviewProvider {
    static var previews: some View {
            ContentView()
    }
 }
 */
