//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김영훈 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            Label("Text", systemImage: "clock.circle").font(.title)
            Label {
                Text("No modifiers")
            } icon: {
                Image("clock-solid")
                    .resizable()
                    .frame(width: 20.0, height: 20.0)
            }
        }
    }
}

/*
 Swift 3.0 이전 프리뷰
struct ContentView_Previews: PreviewProvider {
 static var priveiw: some View {
    ContentView()
 }
}
*/

#Preview {
    ContentView()
}
