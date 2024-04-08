//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI

extension Color {
    static let myCustomColor = Color(red: 0.5, green: 0.8, blue: 0.3)
}

struct ContentView: View {
//    @State private var selectedColor = Color.gray
    @State private var message = ""
    var body: some View {
        VStack(spacing: 28) {
//            Rectangle()
//                .fill(selectedColor)
            Text(message)
            Picker("Favorite Color" ,selection: $message) {
                Text("Happy")
//                    .tag(Color.red)
                    .tag("happy")
                Text("Sad")
//                    .tag(Color.green)
                    .tag("sad")
                Text("Bored")
//                    .tag(Color.blue)
                    .tag("bored")
            }
            .pickerStyle(SegmentedPickerStyle())
            .onChange(of: message) { newValue in
                switch newValue {
                case "happy": message = "Be happy and joyous"
                case "sad": message = "Life can be a struggle at times"
                case "bored": message = "Look for your purpose"
                default : break
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

/*
 swift 3.0 이전 프리뷰
 struct ContentView_Preview: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
