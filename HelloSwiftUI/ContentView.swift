//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 홍준범 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("위")
            HStack {
                Text("왼쪽")
                Text("오른쪽")
            }
            ZStack {
                Text("배경")
                Text("전경")
            }
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                print("button1 click")
            }
            Button(action: {
                print("button2 click")
            }, label: { //action 은 클릭했을 때 하는 일
                Text("Button")
            })
        }
    }
}

#Preview {
    ContentView()
}

/*
    Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
    static var previews: som View {
        ContentView()
    }
}
 */
