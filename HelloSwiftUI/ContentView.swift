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
            Label("Text", systemImage: "clock.circle").font(.title)
            Label {
                Text("No modifiers")
            } icon: {
                Image("clock-solid")
                    .resizable()
                    .frame(width: 23.0, height: 23.0)
            }
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
