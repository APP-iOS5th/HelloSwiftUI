//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Mac on 4/8/24.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack (spacing: 20){
//            ZStack {
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(Color.gray)
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(Color.purple)
//                    .position(x: 255, y: 125)
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(Color.pink)
//                    .offset(x: 74, y: 125)
//            }
            Text("1111")
                .font(.system(size: 40))
                .background(Color.red)
            Text("2222")
                .font(.system(size: 40))
                .background(Color.orange)
            Text("3333")
                .font(.system(size: 40))
                .background(Color.green)
            Text("4444")
                .font(.system(size: 40))
                .background(Color.blue)
            Text("5555")
                .font(.system(size: 40))
                .background(Color.purple)
        }
    }
}

#Preview {
    ContentView()
}
/*
 swift 3.0이전
 struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        contentView()
    }
 }
 */
