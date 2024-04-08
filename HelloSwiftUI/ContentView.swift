//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Mac on 4/8/24.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            Spacer()
            
            let myString = "Displays a string variable"
//            Text("Hello World \(myString)")
            Text("This is my age \(myString). Since I am retired, I am mow eligible for a pensoin and Social Security so I can spend the rest of my life relaxing and enhoying life without having to work for an income anymore.")
                .multilineTextAlignment(.leading) // 문단정렬
                .truncationMode(.tail) //라인생략 tail head middle
                .lineLimit(4)
            
            Spacer()
            
            Text("Bold Text")
                .font(.title)
                .bold()
            Text("Italic")
                .font(.headline)
                .italic()
            Text("Underline")
                .underline()
            Text("Strikethrough")
                .strikethrough()
            Text("Custom Font Text")
                .font(.custom("AmericanTypewriter", size: 24))
            Text("Line Spacing")
                .font(.body)
                .lineSpacing(10)
            
            Spacer()
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
