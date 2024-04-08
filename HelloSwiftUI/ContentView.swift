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
//            이미지 크기 조정, 그롭(자르기, 원형)
//            Image("dog")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//            
//            Image("cat")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//                .clipShape(Circle())
            
//          이미지 그림자 효과
//            Image("dog")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//                .shadow(color: .red, radius: 46, x: 0, y: 0)
//            
//            Image("cat")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//                .clipShape(Circle())
//                .shadow(color: .green, radius: 46, x: 90, y: 50)

//          이미지 테두리 오버레이
//            Image("dog")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//                .overlay {
//                    Rectangle().stroke(Color.blue, lineWidth: 10)
//                }
//            
//            Image("cat")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: .fill)
//                .clipShape(Circle())
//                .overlay {
//                    Circle().stroke(Color.purple, lineWidth: 20)
//                }
            
//          이미지 투명도
            Image("dog")
                .resizable()
                .frame(width: 250, height: 250)
                .opacity(0.5)
            Image("cat")
                .resizable()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fill)
                .opacity(0.25)
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
