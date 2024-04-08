//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 박지혜 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    
    var body: some View {
        VStack (spacing: 28){
            Text(message)
            Picker("Favorite Color", selection: $message, content: {
                Text("Happy").tag("happy")
                Text("Sad").tag("sad")
                Text("Bored").tag("bored")
            })
            .pickerStyle(SegmentedPickerStyle())
            
            // Picker 변화 추적
            .onChange(of: message) {newValue in
                switch newValue {
                case "happy": message = "Be happy and joyous"
                case "sad": message = "Life can be a struggle at times"
                case "bored": message = "Look for your purpose"
                default:
                    break
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
