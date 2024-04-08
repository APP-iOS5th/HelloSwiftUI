//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SungWoonLee on 4/8/24.
//

import SwiftUI

struct ContentView: View { @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    var body: some View {
        VStack  {
            //            ZStack {
            //
            //                Text("Top")
            //                    .font(.system(size: 40))
            //                    .background(Color.yellow)
            //
            //
            //                Text("Top")
            //                    .font(.system(size: 40))
            //                    .background(Color.yellow)
            //                    .position(x: 0, y:0)
            //
            //
            //                Text("Top")
            //                    .font(.system(size: 40))
            //                    .background(Color.yellow)
            //                    .position(x: 255, y:255)
            //
            //
            //                Text("Top")
            //                    .font(.system(size: 40))
            //                    .background(Color.yellow)
            //
            //                    .offset(x:76, y:125)
            //            }
            
            Text("Top")
                .font(.system(size: 40))
                .background(Color.yellow)
            Text("Top")
                .font(.system(size: 40))
                .background(Color.yellow)

            
        }.offset(x:25, y:255) //offset을 vstack{} 전체에 적용 가능. offset은 처음 있던 위치를 0,0으로 보고 추가로 이동시키는 것.
    }
}
#Preview {
    ContentView()
}

/*
 
 Swift 3.0 이전 프리뷰
 struct ContentView)Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 
 */
