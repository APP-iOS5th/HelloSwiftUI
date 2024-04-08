//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Mac on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var color = Color.gray

    var body: some View {
        VStack (spacing: 23){
            Text(message)
                .font(.title)
                .background(color)
            Picker("Favorite Color", selection: $message, content: {
                Text("Happy").tag("happy")
                Text("Sad").tag("sad")
                Text("Bored").tag("bored")
            })
            .pickerStyle(SegmentedPickerStyle()) //종류가 여러개 잇음
            .onChange(of: message) { newValue in
                switch newValue {
                case "happy":
                    message = "Be happy and joyous"
                    color = Color.red
                case "sad":
                    message = "Life can be a struggle at times"
                    color = Color.gray
                case "bored":
                    message = "Look for your purpose"
                    color = Color.blue
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
 swift 3.0이전
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 contentView()
 }
 }
 */
