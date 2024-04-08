//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 장예진 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    var body: some View {
        VStack {
            Slider(value: $sliderValue, in: 0...1)
                .accentColor(.purple)
            
            Stepper("값 \(value)",value : $value , in: 0...10)
            Toggle("Toggle message on/off",
                   isOn: $isOn)

            //상태저장 변수를 추가해서 누르면 상태변경 하게 설정(위에 state)
//            Toggle(isOn: .constant(true), label:{
//                Text("Toggle Example")
//            Toggle(isOn: $isOn, label:{
//                Text("Toggle Example")
//            })
            //label을 별도로 줄수도 있고 vstack에 넣을수도있음
            Text("위")
                .font(.largeTitle)
                .fontWeight(.semibold)
            HStack{
                Text("왼쪽")
                Text("오른쪽")
            }
            .background(Color.purple)
            ZStack{
                Text("배경")
                Text("전경")
            }
            Button("Button"){
                print("button1 click")
            }
            Button(action:{
                print("button click")
            },label: {
                Text("Button")
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


/*
 swift 3.0 이전 preview
struct contentview_previews : PreviewProvider {
    static var previews: some view{
        ContentView()
    }
 }
*/
