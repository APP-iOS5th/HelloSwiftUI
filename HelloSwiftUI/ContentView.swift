//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이서경 on 2024/04/08.
//

import SwiftUI

struct ContentView: View {
    @State var sliderValue = 0.0
    @State var message = ""
    @State var flag = true
    
    var body: some View {
        DisclosureGroup("펼치기") {
            Text("입력한 내용 = \(message)")
            TextField("Type here", text: $message)
                .padding()
            Text(flag ? "Toggle = true" : "Toggle = false")
            Toggle(isOn: $flag) {
                Text("Toggle")
            }
            Text("The slider value = \(sliderValue)")
            Slider(value: $sliderValue, in: 0...15)
                .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
