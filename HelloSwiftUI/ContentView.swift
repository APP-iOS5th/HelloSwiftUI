//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by wonyoul heo on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("위")
            HStack {
                Text("왼쪽")
                Text("오른쪽")
            }
            ZStack {
                Text("  배경")
                Text("전경  ")
            }
            Button("Button") {
                print("button1 click")
            }
            Button(action: {
                print("button2 click")
            },  label: {
                Text("Botton")
            }
            )
        }
        .padding()
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
