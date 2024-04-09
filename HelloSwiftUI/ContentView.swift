//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황민경 on 4/8/24.
//

import SwiftUI

extension Color{
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}

@available(iOS 15.0, *)
struct ContentView: View {
    @State var myToggle = true
    @State var newValue = 0

    var body: some View {
        VStack {
            Toggle(isOn: $myToggle){
                Text("Toggle Text")
            }
            .padding()
            
            Rectangle()
                .frame(width: 200, height: 150)
                .foregroundColor(myToggle ? .orange : .green)
            
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
 Swift 3.0 이전 프리뷰
 struct ContentView_Privews: PreviewProvider {
    static var previews: some view {
        ContentView()
    }
 }
 */
