//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack {
            let myString = "Displays a string variable"
            Text("This is my age \(myString). \nSince I am retired, \nI am now eligible for a pension and Social Security so I can spend the rest of my life relaxing and enjoying life without having to work for an income anymore.")
//                .multilineTextAlignment(.trailing)
                .truncationMode(.tail)
                .lineLimit(3)
            Text("Bold Text")
                .font(.title)
                .bold()
            
            Text("Italic")
                .font(.title2)
                .italic()
            Text("Underline")
                .font(.headline)
                .underline()
            Text("Strikethrough")
                .font(.subheadline)
                .strikethrough()
            Text("Custom Font Text")
                .font(.custom("AmericanTypewriter", size: 24))
            Text("Line Spacing\nSecond Line")
                .font(.body)
                .lineSpacing(20)
        }
    }
}

#Preview {
    ContentView()
}
