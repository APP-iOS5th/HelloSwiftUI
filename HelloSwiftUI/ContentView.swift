//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack{
            //세로 나누기
            Text("Yheaaaaaaaaaaaaaa")
            HStack{
                //가로 나누기
                Text("글자길이 만큼 가로를 사용")
            
                GeometryReader { geometry in
                    VStack {
//                        Text("Width = \(geometry.size.width)")
//                        Divider()
//                        Text("Local X origin = \(geometry.frame(in: .local).origin.x)")
//                        Text("Local Y origin = \(geometry.frame(in: .local).origin.y)")
//                        Divider()
//                        Text("Global X origin = \(geometry.frame(in: .global).origin.x)")
//                        Text("Global X origin = \(geometry.frame(in: .global).origin.y)")
//                        // origin을 기준으로 width height 를 정해서 상자를 그린다.
//                        //origin은 local/global 을 기준으로 찍는다.
//                        //global은 좌표영역에 알약까지 포함해서 나타내는 것 0,59.0...에서 시작한다. local은 그걸 빼고 0,0으로 시작.
                        
                        
                        Text("minX = \(geometry.frame(in: .local).minX)")
                        Text("midX = \(geometry.frame(in: .local).midX)")
                        Text("maxX = \(geometry.frame(in: .local).maxX)")
                        
                    // x 축의 좌측, 우측, 중앙 값을 나타낸다.
                        
                        
                        Text("minY = \(geometry.frame(in: .local).minY)")
                        Text("midY = \(geometry.frame(in: .local).midY)")
                        Text("maxY = \(geometry.frame(in: .local).maxY)")
                        
                            //이건 Y축. minX, midX, maxX Y 로 나타낸다.
                    }
                }.background(Color.gray)
                    .ignoresSafeArea()
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
