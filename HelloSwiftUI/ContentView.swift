//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by JIHYE SEOK on 4/8/24.
//

import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    
    @State var myToggle = true
    @State var newValue = 0
    @State var sliderValue = 0.0
    
    var body: some View {
        VStack {
            Toggle(isOn: $myToggle) {
                Text(myToggle ? "Orange" : "Green")
            }
            .padding()
            
            Rectangle()
                .frame(width: 200, height: 150)
                .foregroundColor(myToggle ? .orange : .green)
                .padding()
            Stepper(value: $newValue, in: 1...10) {
                Text("Stepper Value : \(newValue)")
            }
            .padding()
            
            Slider(value: $sliderValue, in: 1...50, step: 2)
                .padding()
            Text("Slider Value : \(sliderValue)")
        }
    }
}


#Preview {
    ContentView()
}

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
