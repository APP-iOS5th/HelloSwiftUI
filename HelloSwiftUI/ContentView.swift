//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack { //Vertical
            Text("위")
            HStack { //Horizontal
                Text("왼쪽")
                Text("오른쪽")
            }
            ZStack {
                Text("배경")
                Text("전경")
            }
            Button("Button"){
                print("button click1")
            }
            
            Button(action: {
                print("button click1")
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }
    }
}

#Preview {
    ContentView()
}
/*
Swift 3.0 이전 프리퓨
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
