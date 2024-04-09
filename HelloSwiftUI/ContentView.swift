//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이서경 on 2024/04/08.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}

struct ContentView: View {
    @State var myToggle = true
    @State var newValue = 0
    
    var body: some View {
        VStack {
            Toggle(isOn: $myToggle) {
                Text(myToggle ? "Orange" : "Green")
            }
            Rectangle()
                .frame(width: 200, height: 150)
                .foregroundColor(myToggle ? .orange : .green)
            Stepper(value: $newValue, in: 1...10) {
                Text("Stepper value = \(newValue)")
            }
            .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
