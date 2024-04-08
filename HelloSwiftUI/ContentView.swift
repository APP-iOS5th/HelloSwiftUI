//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
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
            ZStack{
                Text("배경")
                Text("전경")
            }
            Button(action: {
                print("button click")
            }, label: {
                Text("Button")
            })
            Button(action: {
                print("button2 click")
            }, label: {
                Text("Button")
                
            })
            
        }
       
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
