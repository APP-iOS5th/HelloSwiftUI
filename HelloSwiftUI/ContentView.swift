//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김영훈 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            
//            ZStack{
//                Text("Top")
//                    .font(.system(size: 45))
//                    .background(Color.yellow)
//                Text("Top")
//                    .font(.system(size: 45))
//                    .background(Color.yellow)
//                    .position(x: 200, y: 100)
//                Text("Top")
//                    .font(.system(size: 45))
//                    .background(Color.yellow)
//                    .offset(x: 74, y: 125)
//            }
            
            Text("First")
                .font(.system(size: 40))
                .background(Color.yellow)
            Text("Second")
                .font(.system(size: 40))
                .background(Color.yellow)
            
        }.offset(x:25, y:125)
    }
}

/*
 Swift 3.0 이전 프리뷰
struct ContentView_Previews: PreviewProvider {
 static var priveiw: some View {
    ContentView()
 }
}
*/

#Preview {
    ContentView()
}
