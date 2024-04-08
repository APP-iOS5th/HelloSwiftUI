//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by John Yun on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            ZStack {
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(Color.cyan)
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(Color.cyan)
//                    .position(x: 255, y: 127)
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(Color.cyan)
//                    .offset(x: 74, y: 125)
//            }
            Text("First")
                .font(.system(size: 40))
                .background(Color.cyan)
            Text("Second View")
                .font(.system(size: 40))
                .background(Color.cyan)
        }
        // VStack offset 설정
        .offset(x: 25, y:125)
    }
}

#Preview {
    ContentView()
}
