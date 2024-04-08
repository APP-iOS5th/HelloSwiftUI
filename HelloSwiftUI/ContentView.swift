//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by JIHYE SEOK on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    
    @State private var message = ""
    
    var body: some View {
        VStack (spacing: 20) {
            Text(message)
            Picker("Message", selection: $message, content: {
                Text("Happy").tag("happy")
                Text("Sad").tag("sad")
                Text("Bored").tag("bored")
            })
            .pickerStyle(SegmentedPickerStyle())
            .onChange(of: message) { oldValue, newValue in
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

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
