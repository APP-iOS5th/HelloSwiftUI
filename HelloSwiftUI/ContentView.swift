//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김영훈 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            let myString = "Displays a string variable"
            Text("Hello World, \(myString)")
            Text("This is my age \(myString). Since I am retired, I am now eligible for a pension and Social Security so I can spend the rest of my life relaxing and enjoying life without having to work for an income anymore.")
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .truncationMode(/*@START_MENU_TOKEN@*/.tail/*@END_MENU_TOKEN@*/)
                .lineLimit(3)
            
            Spacer()
            
            Text("Bold Text")
                .font(.title)
                .bold()
            
            Text("Italic Text")
                .font(.title2)
                .italic()
            
            Text("Underlined Text")
                .font(.headline)
                .underline()
            
            Text("Strikethrough Text")
                .font(.subheadline)
                .strikethrough()
            
            Text("Custom Font Text")
                .font(.custom("AmericanTypewriter", size: 24))
                
            Text("Line Spacing\n Second line")
                .font(.body)
                .lineSpacing(10)
            
        }
    }
}

/*
 Swift 3.0 이전 프리뷰
struct ContentView_Previews: PreviewProvider {
 static var priveiw: some View {
    ContentView()
 }
}
*/

#Preview {
    ContentView()
}
