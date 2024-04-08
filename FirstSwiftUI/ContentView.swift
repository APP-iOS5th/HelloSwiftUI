//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by 조성빈 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
//    @State private var selectedColor = Color.gray
    
    @State private var message: String = "How are you?"
    
    var body: some View {
//        VStack (spacing: 28) {
//            Rectangle().fill(selectedColor)
//            Picker("Favorite Color", selection: $selectedColor, content: {
//                Text("Red")
//                    .tag(Color.red)
//                Text("Blue")
//                    .tag(Color.blue)
//                Text("Green")
//                    .tag(Color.green)
//            })
//            .pickerStyle(SegmentedPickerStyle())
//        }
        VStack {
            Text(message)
            Picker("Feel", selection: $message, content: {
                Text("Happy").tag("happy")
                Text("Sad").tag("sad")
                Text("Bored").tag("bored")
            })
            .pickerStyle(SegmentedPickerStyle())
            .onChange(of: message) { value in
                switch value {
                case "happy":
                    message = "Be happy and joyous"
                case "sad":
                    message = "Life can be a struggle at"
                case "bored":
                    message = "Look for your purpose"
                default:
                    break
                }
            }
        }
    }
}

//#Preview {
//    ContentView()
//}

