//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by jinwoong Kim on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            let myString = "Displays a string variable"
            Text("This is my age \(myString). Since I am retired, I am now eligible for a pension and Social Security so I can spend the rest of my life relaxing and enjoying life without having to work for an income anymore.")
                .multilineTextAlignment(.trailing)
                .truncationMode(.tail)
                .lineLimit(3)
            Spacer()
            Text("Bold Text")
                .font(.title)
                .bold()
            Text("Itailc Text")
                .font(.title2)
                .italic()
            Text("Underlined Text")
                .font(.headline)
                .underline()
            Text("Strikethrough Text")
                .font(.body)
                .strikethrough()
            Text("First Line\nSecond Line")
                .font(.body)
                .lineSpacing(20)
        }
    }
}

#Preview {
    ContentView()
}
