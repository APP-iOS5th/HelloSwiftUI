//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 어재선 on 4/8/24.
//

import SwiftUI
struct ContentView: View {
    @State var mytoggle = true
    @State var newValue = 0
    var body: some View {
        VStack {
            Toggle(isOn: $mytoggle) {
                Text(mytoggle ? "Orange": "Green")
            }
            .padding()
            
            Rectangle()
                .frame(width: 200,height: 150)
                .foregroundColor(mytoggle ? .orange: .green)

            Stepper(value: $newValue, in: 1...10){
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
 Swift 3.0이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
