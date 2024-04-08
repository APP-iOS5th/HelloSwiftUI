//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("위")
            HStack {
                Text("윈쪽")
                Text("오른쪽")
            }
            ZStack {
                Text("     배경").background(Color.red)
                Text("전경").background(Color.green)
            }
            // add button from Object Library
            Button("Button1") {
                print("button1 clicked")
            }
            // add button by coding
            Button(action: {
                print("button2 clicked")
            }, label: {
                Text("Button2").background(Color.blue)
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

/*
// Swift 3.0 이전 프리뷰
struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
        ContentView()
    }
}
*/
