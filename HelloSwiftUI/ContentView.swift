//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.0
    
    var body: some View {
        VStack() {
            let myString = "Displays a string variable"
//            Text("Hello World, \(myString)")
            Text("This is my age \(myString). Since I am retired,\n I am now eligible for a pension and Social Security so I can spend the rest of my life relaxing and enjoying life without having to work for an income anymore.")
                .multilineTextAlignment(.leading)
                .truncationMode(.tail)
                .lineLimit(3)

            Spacer()
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

            Text("Line Spacing\n Line Spacing")
                .font(.body)
                .lineSpacing(20)
                .background(.red)
        }

    
       
    }
}

#Preview {
    ContentView()
}

/*
 swift 3.0 이전 프리뷰
struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
