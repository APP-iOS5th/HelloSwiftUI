//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.0
    
    var body: some View {
        VStack() {
//            ZStack {
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(.yellow)
//                
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(.yellow)
//                    .position(x: 255, y: 127)
//
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(.yellow)
//                    .offset(x: 74 ,y: 125)
//        }
            Text("First")
                .font(.system(size: 40))
                .background(.yellow)
            Text("Second View")
                .font(.system(size: 40))
                .background(.yellow)
                
        }
        .offset(x:25, y:125)

    
       
    }
}

#Preview {
    ContentView()
}

/*
 swift 3.0 이전 프리뷰
struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
