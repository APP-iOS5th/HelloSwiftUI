//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by JIHYE SEOK on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack {
            // ZStack offset, position
            //            ZStack {
            //                Text("Top")
            //                    .font(.system(size: 40))
            //                    .background(.yellow)
            //                Text("Top")
            //                    .font(.system(size: 40))
            //                    .background(.yellow)
            //                    .offset(x: 74, y:250)
            //                Text("Top")
            //                    .font(.system(size: 40))
            //                    .background(.yellow)
            //                    .position(x: 125, y: 55)
            //        }
            Text("First")
                .font(.system(size: 40))
                .background(.teal)
            Text("Second View")
                .font(.system(size: 40))
                .background(.teal)
            // VStack offset 설정
        }.offset(x: 25, y: 125)
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
