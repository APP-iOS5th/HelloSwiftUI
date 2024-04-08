//
//  TextView.swift
//  HelloSwiftUI
//
//  Created by 임재현 on 4/8/24.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        
        VStack {
            let myString = "Displays a string variable"
            //Text("Hello, World\(myString)")
            Text("This is my age \(myString). Since I am retired, I am now eligible for a pension and Social Security so I can spend the rest of my life relaxing and enjoying life without having to work for an income anymore. ")
                .multilineTextAlignment(.center)
                .truncationMode(.tail) // .head : 앞에 / .middle : 중략 / .trail : 후햑
                .lineLimit(3)
            
            Spacer()
            Text("Bold Text")
                .font(.title)
                .bold()
            
            Text("Italic")
                .font(.title2)
                .italic()
            
            Text("Unterlined")
                .font(.headline)
                .underline()
            
            Text("Strikethrough")
                .font(.subheadline)
                .strikethrough()
             
            Text("Custom Font Text")
                .font(.custom("AmericanTypewriter", size: 24))
            
            Text("Line Spacing\nSecond Line")
                .font(.body)
                .lineSpacing(10)
            
            
            
            
            
            
        }
    }
}

#Preview {
    TextView()
}
