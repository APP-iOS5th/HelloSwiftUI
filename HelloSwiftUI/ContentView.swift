//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        GeometryReader { geometry in
            VStack {
            Text("Local X origin = \(geometry.frame(in: .local).origin.x)")
                Text("Local Y origin = \(geometry.frame(in: .local).origin.y)")
                Divider()
                Text("Global X origin = \(geometry.frame(in: .global).origin.x)")
                Text("Global X origin = \(geometry.frame(in: .global).origin.y)")
                // origin을 기준으로 width height 를 정해서 상자를 그린다.
                //origin은 local/global 을 기준으로 찍는다.
                //global은 좌표영역에 알약까지 포함해서 나타내는 것 0,59.0...에서 시작한다. local은 그걸 빼고 0,0으로 시작.
                
                
            }
            
        }.background(Color.gray)
            .ignoresSafeArea()
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
