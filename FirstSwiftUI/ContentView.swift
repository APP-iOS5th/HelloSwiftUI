//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by 조성빈 on 4/8/24.
//

import SwiftUI

//특정 버전 지원 제한 -> 15.0 버전 이하는 실행불가.
@available(iOS 15.0, *)
struct ContentView: View {
    
    @State var sliderValue = 0.0
    @State var message =  ""
    @State var flag = true
    
    var body: some View {
        DisclosureGroup("펼치기") {
            Text("입력한 내용 = \(message)")
            TextField("입력하세요.", text: $message)
            Text("Toggle : \(flag)")
            Toggle(isOn: $flag) {
                Text("Toggle.")
            }
            Text("The slider value = \(sliderValue)")
            Slider(value: $sliderValue, in: 0...15)
        }
        .padding()
    }
}

//#Preview {
//    ContentView()
//}

