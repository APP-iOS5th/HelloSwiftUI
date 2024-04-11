//
//  DisclosureGroupView.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/11/24.
//

import SwiftUI

struct DisclosureGroupView: View {
    
    @State var sliderValue = 0.0
    @State var message = ""
    @State var flag = true
    
    var body: some View {
        VStack {
            
            DisclosureGroup("펼치기") {
                Text("입력한 내용 = \(message)")
                TextField("여기에 입력하세요",text: $message)
                    .padding()
                
                Text(flag ? "Toggle = true" : "Toggle = false")
                Toggle(isOn: $flag) {
                    Text("Toggle")
                }
                .padding()
                
                Text("The slider value = \(sliderValue)")
                Slider(value: $sliderValue, in: 0...15)
                    .padding()
            }
            
        }
    }
}

#Preview {
    DisclosureGroupView()
}
