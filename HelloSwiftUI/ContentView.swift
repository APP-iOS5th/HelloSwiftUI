//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김혜림 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    //상태 저장 변수
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack /*버티컬 스택*/ {
            Stepper("값 \(value)", value: $value, in: 0...10)
            Slider(value: $sliderValue, in: 0...1 )
                .accentColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
            /*
            Toggle(isOn: $isOn, label: {
                Text("Toggle Example")
            })
             */
            Toggle("Toggle Message On/Off", isOn: $isOn)
            
            Text("위")
            //수정자 추가 : .수정속성(수정내용)
                .padding(.leading, 9.0)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            HStack /*호리젠탈 스택*/ {
                Text("왼쪽")
                Text("오른쪽")
            }
            
            .background(Color.purple)
            ZStack {
                Text("배경")
                Text("전경")
            }
            
            .padding(/*@START_MENU_TOKEN@*/.horizontal, 10.0/*@END_MENU_TOKEN@*/)
            Button(action: {
                print("button2 click")
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
            
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                print("button1 click")
            }
        }
    }
}

/*
Swift 3.0 이전 프리뷰
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/

//현재 프리뷰
#Preview {
    ContentView()
}
