//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 어재선 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    var body: some View {
        VStack{
            let myString = "Displays a string variable"
            //            Text("Hello World, \(myString)")
            Text("This is my age \(myString). Since I am retired, I am now eligible for a pension and Social Security so I can spend the rest of my life relaxing and enjoying life without having to work for an income anymore.")
                .multilineTextAlignment(.trailing)
                .truncationMode(.tail)
                .lineLimit(3)
            Spacer()
            Text("Bold text")
                .font(.title)
                .bold()
            Text("Italic")
                .font(.title2)
                .italic()
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

/*
 Swift 3.0이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
