//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황규상 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn1 = true //상태변수
    @State private var isOn2 = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    
    var body: some View {
        ///Vertical Stack (default: center)
        ///수직 스택으로, 자식 뷰들을 수직(위에서 아래로) 방향으로 정렬.
        VStack {
            Slider(value: $sliderValue, in: 0...1)
                .tint(.brown)
                .accentColor(/*@START_MENU_TOKEN@*/.purple/*@END_MENU_TOKEN@*/)
        
            Stepper("값 \(value)", value: $value, in: 0...10)
            
            Toggle("Toggle1 Message on/off", isOn: $isOn1) //레이블을 문자열로 직접 제공
            Toggle(isOn: $isOn2, label: { //레이블을 생성하는 데 클로저를 사용, 클로저 내에서 Text 컴포넌트를 반환하여 토글의 레이블을 정의
                Text("Toggle2 Example")
            })
            
            Text("위") //attribute는 직접 작성할 수도 있고, attribute inspector에서도 추가/삭제할 수 있음.
                .font(.largeTitle)
                .fontWeight(.semibold)
                .background(Color.yellow)
                .padding()
            
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
