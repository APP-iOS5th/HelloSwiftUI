//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by 조성빈 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    let myString = "Displays a string variable"
    
    var body: some View {
        VStack {
//            Text("Hello World & \(myString)")
            Text("Displays a string variable Displays a string variableDisplays a string variableDisplays a string variableDisplays a string variableDisplays a string variableDisplays a string variableDisplays a string variableDisplays a string variableDisplays a string variableDisplays a string variableDisplays a string variableDisplays a string variableDisplays a string variableDisplays a string variableDisplays a string variableDisplays a string variableDisplays a string variableDisplays a string variableDisplays a string variableDisplays a string variableDisplays a str1ng variable")
                .multilineTextAlignment(.trailing) // 정렬
                .lineLimit(3)
                .truncationMode(.middle)
            
            
            Text("Bold Text")
                .font(.title) // 크기
                .fontWeight(.bold)
            
            Text("Italic")
                .font(.title2)
                .italic()
            
            Text("UnderLined")
                .font(.headline)
                .underline()
            
            Text("Strikethrough")
                .font(.subheadline)
                .strikethrough()
            
            Text("Custom Font Text")
                .font(.custom("AmericanTypewriter", size: 24))
            
            Text("Line Spacing")
                .font(.body)
                .lineSpacing(10)
        }
    }
}

//#Preview {
//    ContentView()
//}

