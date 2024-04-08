//
//  SegmentButtonExample.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/8.
//

import SwiftUI

struct SegmentButtonExample: View {
    
//    @State private var selectedColor: Color = Color.gray
    @State private var message: String = ""
    
    var body: some View {
        VStack(spacing: 28) {
            
            Text(message)
                .transition(.opacity)
            
//            Rectangle()
//                .fill(selectedColor)
            
            Picker("Favorite Color", selection: $message) {
                Text("Happy").tag("happy")
                Text("Sad").tag("sad")
                Text("Bored").tag("bored")
            }
            .pickerStyle(.segmented)
            .onChange(of: message) { _, newValue in
                switch newValue {
                case "happy": message = "Be happy and joyuos"
                case "sad": message = "Life can be a struggle at times"
                case "bored": message = "Look for your purpose"
                default: break
                }
            }
        }
        .padding() // MARK: default padding: 16
        .animation(.bouncy)
    }
}

#Preview {
    SegmentButtonExample()
}
