//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jude Song on 4/8/24.
//

//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack (alignment: .trailing, spacing: 24) {
//            Text("Default padding of 16 points")
//                .padding()
//                .background(Color.yellow)
//            Text("Default padding of 45 points")
//                .padding(45)
//                .background(Color.yellow)
//            Text("Default padding of 3 points")
//                .padding(3)
//                .background(Color.yellow)
//            Spacer()
//            HStack (alignment: .bottom, spacing: 24) {
//            Text("Top padding only")
//                .padding(.top)
//                .background(Color.yellow)
//            Text("Trailing padding only")
//                .padding(.trailing)
//                .background(Color.yellow)
//            Text("Bottom padding only")
//                .padding(.bottom)
//                .background(Color.yellow)
//            }
//            Spacer()
//            Text("Leading padding only")
//                .padding(.leading)
//                .background(Color.yellow)
//            Text("Top, Leading padding")
//                .padding([.top, .leading], 45)
//                .background(Color.yellow)
//            Text("Top, Leading and Bottom")
//                .padding([.top,.leading,.bottom], 45)
//                .background(Color.yellow)
//            
//        }
//    }
//    
//}
//
//
//#Preview {
//    ContentView()
//}
//
//
///*
// Swift 3.0 이전 프리뷰
// struct ContentView_Previews: PreviewProvider {
// static var previews: some View {
// ContentView()
// }
// }
// */
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
//            }
            Text ("First")
                .font(.system(size: 40))
                .background(Color.yellow)
            Text ("Second View")
                .font(.system(size: 40))
                .background(Color.yellow)
        }
        // VStack offset 설정
        .offset(x: 25, y: 125)
    }
}

#Preview {
    ContentView()
}
