//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황민경 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            let myString = "Displays a string variable"
            //Text("Hello World \(myString)") // 문자열 보간법
            Text("This is my age \(myString). Since I am retired, I am now eligible for a pension and Social Security so I can spend the rest of my life relaxing and enjoying life without having to work for an income anymore.")
                .multilineTextAlignment(.leading)
                .truncationMode(.tail)
                .lineLimit(3)
            
            Spacer()//여백
            
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
                .lineSpacing(10)//줄간격
        }
    }
}

#Preview {
    ContentView()
}
/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Privews: PreviewProvider {
    static var previews: some view {
        ContentView()
    }
 }
 */
