//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 장예진 on 4/8/24.

import SwiftUI


struct ContentView: View {
    @State var myToggle = true //boolean
    @State var newValue = 0 //int
    
    var body: some View{
        VStack{
            Toggle(isOn: $myToggle){
                Text("Toggle Text")
            }
            Rectangle()
                .frame(width: 200, height:150)
                .foregroundColor(myToggle ? .orange: .green)
            // int 값의 범위한정자를 지정해줘야함. (1~10으로)
            Stepper(value: $newValue, in: 1...10) {
                Text("Stepper value = \(newValue)")
            }
            .padding()
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
