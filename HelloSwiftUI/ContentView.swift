//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by wonyoul heo on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            let myString = "HEO WON YEOL"
            Text("My naem is \(myString). Since I am retired, I am now eligible for a person. Since I am retired, I am now eligible for a person.")
                .multilineTextAlignment(.trailing)
                //여러줄 정렬
                .truncationMode(.middle)
                //어느 부분을 생략할 것인가
                .lineLimit(3)
                //몇줄 까지 보여주고 싶나
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
            Text("Line Spacing\nLine Spacing")
                .font(.body)
                .lineSpacing(100)
                // 줄간격
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
