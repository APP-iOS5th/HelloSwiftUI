//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 육현서 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
//            Image("toby2")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
//            
//            Image("toby")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
//                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)

            
// 이미지 테두리 오버레이
            
//            Image("toby2")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
//                .shadow(color: .yellow, radius: 46 )
//                .overlay(Rectangle().stroke(Color.brown, lineWidth: 10))
//            
//            Image("toby")
//                .resizable()
//                .frame(width: 250, height: 250)
//                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
//                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
//                .shadow(color: .blue, radius: 46, x: 90, y: 50 )
//                .overlay(Circle().stroke(Color.cyan, lineWidth: 20))
            
            
// 이미지 투명도
                        Image("toby2")
                            .resizable()
                            .frame(width: 250, height: 250)
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .opacity(0.5)
            
                        Image("toby")
                            .resizable()
                            .frame(width: 250, height: 250)
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .opacity(0.25)
                            
        }
    }
}


#Preview {
    ContentView()
}
 
