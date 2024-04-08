//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Mac on 4/8/24.
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
                Text("    배경")
                Text("전경    ")
            }
        }
        Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
            print("hi")
        }
        Button(action: {
            print("button click")
        }, label: {
            Text("button")
        })
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
