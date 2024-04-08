//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 박지혜 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack (alignment: .leading, spacing: 24) {
//            ZStack {
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(Color.red)
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(Color.yellow)
//                    .position(x: 255, y: 127)
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(Color.green)
//                    .offset(x: 74, y: 127)
//            }
            Text("First")
                .font(.system(size: 40))
                .background(Color.blue)
            Text("Second View")
                .font(.system(size: 40))
                .background(Color.blue)
        }
        // VStack offset 설정
        .offset(x: 25, y:125)
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
