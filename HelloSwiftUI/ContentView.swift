//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jude Song on 4/8/24.
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
     Swift 3.0 이전 프리뷰
     struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
     ContentView()
     }
     }
     */
