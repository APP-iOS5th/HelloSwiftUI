//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack{
            let myString = "Displays aa string variable"
//            Text("Hello world \(myString)")
            Text("This is my age\(myString). Sice I am retired, I am now eligible for a pension and Social Security so I can spend the rest of my life relaxing and enjoying life without having to work for an income anymore.")
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .truncationMode(.middle)// 생략 부분 앞쪽 생략, 중간 생략, 마지막 생략 -> default .tail
                .lineLimit(3)
            
            Text("Bold Text")
                .font(.title)
                .bold()
            
            Text("Italic")
                .font(.title2)
                .italic()
            
            Text("Underlined")
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
