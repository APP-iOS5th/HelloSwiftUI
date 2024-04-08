//
//  TextView.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/8/24.
//

import SwiftUI

struct Text_View: View {
    var body: some View {
        
        VStack {
            
            let myString = "Displays a string variable"
            Text("This is my age \(myString). Since I am retired, I am now eligible for a pension and Social Security so I can spend the rest of my life relaxing and enjoying life without having to work for an income anymore.")
                .multilineTextAlignment(.trailing) //
                .truncationMode(.middle) //생략 모디파이어 (middle은 중략)
                .lineLimit(3)
            
            Spacer()

            Text("Bold Text")
                .font(.title)
                .bold()
            Text("italic Text")
                .font(.title2)
                .italic()
            Text("underline Text")
                .font(.headline)
                .underline()
            Text("strikethrough")
                .font(.subheadline)
                .strikethrough()
            Text("Custom Font Text")
                .font(.custom("AmericanTypewriter", size: 24))
            Text("Line Spacing")
                .font(.body)
                .lineSpacing(10.0)
            
            
        }
    }
}

#Preview {
    Text_View()
}
