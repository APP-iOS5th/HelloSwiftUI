//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 장예진 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        VStack {
            let myString = "Displays a string variable"
            //            Text("Hello World, \(myString)")
            Text("This is my age \(myString). Since I am retired, I am now eligible for a pension and Social Security so I can spend the rest of my life relaxing and enjoying life without having to work for an income anymore.")
                .multilineTextAlignment(.trailing)
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
                .font(.custom("AmericanTyperwriter", size: 24))
                .bold()
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
 swift 3.0 이전 preview
struct contentview_previews : PreviewProvider {
    static var previews: some view{
        ContentView()
    }
 }
*/
