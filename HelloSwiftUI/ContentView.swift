//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SungWoonLee on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack  {
            let myString = "Display a string variable"
//            Text("Hello, World, \(myString)")
            Text("a11111sdasdasdasdasdadadasdasdasdasdadasdadasdasdasdasdasdasfldkgnseklrhgnsefkjgsnergk.,fnv.kdgnae.rlgbjdfk.,bad.kserngailgmal/kgmadflgkmadfgk.amerlgkanergalngjakergnakergnadfg22222weweweweewefwefwefwefefwefwefwfwefwefwegfedgfdgsergersgdfgergdfgsergdfsdf22")
                .truncationMode(.tail)//마지막 줄에 중략(...)을 어디에 넣을 것이냐. 앞 뒤 중간
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
                .font(.custom("AmericanTypeWriter", size: 24))
            Text ("Line Spacing")
                .font(.body)
                .lineSpacing(10)
        }
    }
}
#Preview {
    ContentView()
}

/*
 
 Swift 3.0 이전 프리뷰
 struct ContentView)Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 
 */
