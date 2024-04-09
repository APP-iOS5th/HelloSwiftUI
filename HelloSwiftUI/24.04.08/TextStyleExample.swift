//
//  TextExample.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/8.
//

import SwiftUI

struct TextStyleExample: View {
    var body: some View {
//        let myString = "Displays a string variable"
//        Text("Hello World, \(myString)")
        Text("This is my age 12. Since iI am retired, I am now eligible for a pension and Social Security so I can spend the rest of my life relaxing and enjoying life without having to work for an income anymore.")
            .multilineTextAlignment(.leading)
            // MARK: 줄임말(...)위치 설정 -> .head / .middle / .tail
            .truncationMode(.tail)
            // MARK: lineLimit에 설정한 숫자 라인만큼만 화면에 출력 나머지는 ... 처리
            .lineLimit(2)
        
        MultipleSpacer(multiple: 1)
        
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
            // MARK: 취소선
            .strikethrough()
        
        Text("Custom Font Text")
            .font(.custom("AmericanTypewriter", size: 24))
        
        Text("Line Spacing")
            // MARK: 이건? ->
            .font(.body)
            .lineSpacing(10)
    }
}

#Preview {
    TextStyleExample()
}
