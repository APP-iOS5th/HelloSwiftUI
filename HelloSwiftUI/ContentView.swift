//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by jinwoong Kim on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var message = ""
    
    var body: some View {
        VStack {
            Text(message)
            if #available(iOS 17.0, *) {
                Picker("Color", selection: $message) {
                    Text("Happy").tag("happy")
                    Text("Sad").tag("sad")
                    Text("Bored").tag("bored")
                }
                .pickerStyle(.segmented)
                .onChange(of: message) { _, newValue in
                    switch newValue {
                        case "happy": message = "HAPPY"
                        case "sad": message = "SAAAAD"
                        case "bored": message = "BORRRRREDDDDD"
                        default: break
                    }
                }
            } else {
                Picker("Color", selection: $message) {
                    Text("Happy").tag("happy")
                    Text("Sad").tag("sad")
                    Text("Bored").tag("bored")
                }
                .pickerStyle(.segmented)
                .onChange(of: message) { newValue in
                    switch newValue {
                        case "happy": message = "HAPPY"
                        case "sad": message = "SAAAAD"
                        case "bored": message = "BORRRRREDDDDD"
                        default: break
                    }
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
