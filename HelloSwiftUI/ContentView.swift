//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            ZStack {
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(Color.yellow)
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(Color.yellow)
//                    .position(x: 255, y: 127)
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(Color.yellow)
//                    .offset(x: 74, y: 125)
//             }
            Text ("First")
                .font(.system(size: 40))
                .background(Color.yellow)
            Text ("Second View")
                .font(.system(size: 40))
                .background(Color.yellow)
        }.offset(x: 25, y: 100) // VStack offset 설정
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
