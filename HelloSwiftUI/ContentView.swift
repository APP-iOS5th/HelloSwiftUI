//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack {
            ZStack {
                Text("Top")
                    .font(.system(size: 40))
                    .background(Color.yellow)
                Text("offset")
                    .font(.system(size: 40))
                    .background(Color.yellow)
                    .offset(x: 45, y: 125)
                Text("position")
                    .font(.system(size: 40))
                    .background(Color.yellow)
                    .position(x: 45, y: 125)
                Text("First")
                    .font(.system(size: 40))
                    .background(Color.yellow)
                Text("Second")
                    .font(.system(size: 40))
                    .background(Color.yellow)            }
        }
        .offset(x: 30, y: 100)
//        .position(x: 30, y: 100)
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
