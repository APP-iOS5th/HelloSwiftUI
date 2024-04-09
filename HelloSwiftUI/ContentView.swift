//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 박지혜 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var myToggle = true
    @State var newValue = 0
    
    var body: some View {
        VStack {
            Toggle(isOn: $myToggle) { // 상태값 변경에 대해서 필요
                Text(myToggle ? "Orange" : "Green")
            }
            .padding()
            
            Rectangle()
                .frame(width: 200, height: 150)
                .foregroundColor(myToggle ? .orange : .green)
            
            Stepper(value: $newValue, in: 1 ... 10) {
                Text("Stepper value = \(newValue)")
            }
            .padding()
        }
    }
}


#Preview {
    ContentView()
}
