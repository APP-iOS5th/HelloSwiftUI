//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Yachae on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .trailing, spacing: 24) {
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
//            }
            Text ("Frist")
                .font(.system(size: 40))
                .background(.yellow)
            Text ("Second View")
                .font(.system(size: 40))
                .background(.yellow)
        }
        // VStack offset 설정
        .offset(x: 25, y: 125)
    }
}


#Preview {
    ContentView()
}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
