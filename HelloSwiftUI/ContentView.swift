//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이인호 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValue = 0.0
    @State private var message = ""
    @State var flag = true
    
    var body: some View {
        DisclosureGroup("펼치기") {
            Text("입력한 내용 \(message)")
            TextField("Type here", text: $message)
                .padding()
            Text(flag ? "True" : "False")
            Toggle(isOn: $flag, label: {
                Text("Toggle")
            })
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
