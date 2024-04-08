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
            Text("튜나 바..")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.system(size: 70))
            Text("보 아닌 짱❤️")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.system(size: 70))
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
