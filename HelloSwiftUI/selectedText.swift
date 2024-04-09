//
//  selectedText.swift
//  HelloSwiftUI
//
//  Created by 임재현 on 4/8/24.
//

import SwiftUI

struct selectedText: View {
    
    @State private var message = ""
    
    var body: some View {
        VStack(spacing:28) {
            Text(message)
            Picker("Favorite",selection: $message) {
                Text("Happy").tag("happy")
                Text("Sad").tag("sad")
                Text("Bored").tag("bored")
            }
            .pickerStyle(SegmentedPickerStyle())
            .onChange(of:message) {oldValue, newValue in
                
                switch newValue {
                case "happy" : message = "Be happy and joyous"
                case "sad" : message = "Life can be a struggle at "
                case "bored" : message = "Look for your purpose"
                    
                default:
                    break
                }
                
            }
            
        }
    }
}

#Preview {
    selectedText()
}
