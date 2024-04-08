//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 장예진 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("위")
            HStack{
                Text("왼쪽")
                Text("오른쪽")
            }
            ZStack{
                Text("배경")
                Text("전경")
            }
            Button(action:{
                print("button click")
            },label: {
                Text("Button")
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


/*
 swift 3.0 이전 preview
struct contentview_previews : PreviewProvider {
    static var previews: some view{
        ContentView()
    }
 }
*/
