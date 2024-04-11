//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    @State var sliderValue = 0.0
    @State var message = ""
    @State var flag = true
    
    var body: some View {
        DisclosureGroup("펼치기"){
            Text("입력한 내용 = \(message)")
            TextField("Type here", text: $message)
            Text(flag ? "Toogle = true" : "Toggle = false")
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

/*
 swift 3.0 이전 프리뷰
 struct ContentView_Preview: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
