//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황규상 on 4/8/24.
//
// 규상이 바부

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            let myString = "Displays a string variable"
            //Text("Hello World, \(myString)")
            Text("This is my age \(myString). Since I am retired, I am now eligible for a pension and Social Security so I can spend the rest of my life relaxing and enjoying life without having to work for an income anymore.")
                .multilineTextAlignment(.trailing) //여러 줄로 이루어진 텍스트의 정렬 방향을 설정.(leading, center, trailing)
                .truncationMode(.tail) //텍스트 요소에서 텍스트가 요소의 공간을 벗어날 때의 처리 방식을 지정 (head, middle, tail, truncateHead, truncateMiddle, truncateTail)
                .lineLimit(3) //텍스트 요소에서 표시할 최대 줄 수를 지정.(정수 값, nil)
            
            Spacer()
            Text("Bold Text") //굵은 글씨
                .font(.title)
                .bold()
            
            Text("Italic") //이텔리체
                .font(.title2)
                .italic()
            
            Text("Underlined") //밑줄
                .font(.headline)
                .underline()
            
            Text("Strikethrough") //취소선
                .font(.subheadline)
                .strikethrough()
            
            Text("Custom Font Text") //다른 폰트
                .font(.custom("AmericanTypewriter", size: 24))
            
            Text("Line Spacing \n Second Line") //줄간격, 행간이라고 하껄
                .font(.body)
                .lineSpacing(10)
        }
    }
}

#Preview {
    ContentView()
}

/**
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews:PreviewProvider {
    static var previews: some View {
            ContentView()
    }
 }
 */
