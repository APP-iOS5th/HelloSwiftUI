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
    
    @State private var toggleValue: Bool = true
    @State private var stepperValue: Int = 1
    @State private var sliderValue: Float = 0.0
    
    var body: some View {
        VStack {
            Toggle(isOn: $toggleValue) {
                Text(toggleValue ? "Green" : "Red")
            }
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(toggleValue ? .green : .red)
            
            Stepper(value: $stepperValue, in: 1...10) {
                Text("Stepper value = \(stepperValue)")
            }
            
            Slider(value: $sliderValue, in: 0...100, step: 5)
            Text("\(sliderValue)")
        }
        .onAppear() {
            print("ContentView Load.")
        }
    }
}

//#Preview {
//    ContentView()
//}

