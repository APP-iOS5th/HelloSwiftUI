//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI

//텍스트 작업하기
struct ContentView: View {
    var body: some View {
        VStack {
            let myString = "Displays a string variable"
            //Text("Hello World, \(myString)")
            Text("This is my age \(myString).\n Since I am retired,\n I am now eligible for a pension and Social Security so\n I can spend the rest of my life relaxing and enjoying life without having to work for an income anymore.")
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/) //정렬
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
            
            Text("Custom font Text")
                .font(.custom("AmericanTypewriter", size: 24))
                
            Text("Line Spacing\nSecond Line")
                .font(.body)
                .lineSpacing(20)
            
            
        }
    }
}

#Preview {
    ContentView()
}
/*
Swift 3.0 이전 프리퓨
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
