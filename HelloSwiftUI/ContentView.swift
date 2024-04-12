//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by mosi on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack{
            Text("This Text view pushed the GeometryReader down")
            HStack {
                Text("Pushes to the right")
                //기본적으로 아이폰의 SafeArea 영역
                GeometryReader { geometry in
                    VStack{
                        Text("Width = \(geometry.size.width)")
                        Divider()
                        Text("Local X origin = \(geometry.frame(in: .local).origin.x)")
                        Text("Local Y origin = \(geometry.frame(in: .local).origin.y)")
                        Divider() // 구분선
                        Text("Global X origin = \(geometry.frame(in: .global).origin.x)")
                        Text("Global Y origin = \(geometry.frame(in: .global).origin.y)")
                    }
                }
                .background(Color.green)
                // .ignoresSafeArea() SafeArea 영역 허용X
            }
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

