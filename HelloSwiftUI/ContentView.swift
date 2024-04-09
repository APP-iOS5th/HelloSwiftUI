//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI


@available(iOS 15.0, *)  //ios 15 이상에서 가능.
struct ContentView: View {
    

    @State var myToggle = true
    @State var newValue = 0
    @State var sliderValue = 0.0
        
    var body: some View {
        VStack {
            Toggle(isOn: $myToggle) {
                Text(myToggle ? "Orange" :"Green")
            }
            Rectangle()
                .frame(width:200, height: 150)
                .foregroundColor(myToggle ? .orange : .green)
            
            Stepper (value: $newValue, in: 1...10) {
                Text("stepper value = \(newValue)")
            }
            .padding()
            
            Slider(value: $sliderValue, in: 1...1000, step: 0.1) //1-50까지, 4만큼씩 움직임.
                .padding()
            Text("Slider value = \(sliderValue)")
            
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
