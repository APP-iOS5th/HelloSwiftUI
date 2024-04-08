//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이서경 on 2024/04/08.
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
            Text("First")
                .font(.system(size: 40))
                .background(Color.yellow)
            Text("Second")
                .font(.system(size: 40))
                .background(Color.yellow)
        }
        //VStack offset
        .offset(x: 25, y: 125)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
