//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 장예진 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        VStack (alignment: .trailing, spacing: 24){
            
            Text("Default padding of 16 points")
                .padding() //기본적으로 패딩은 16Point
                .background(Color.yellow)
            Text("padding of 45")
                .padding(45)
                .background(Color.yellow)
            Text("padding of 3")
                .padding(3)
                .background(Color.yellow)
            
            Spacer() // 양쪽 여백 추가
            //hstack으로 묶어주기
            HStack (alignment:.top) {
                Text("Top padding only")
                    .padding(.top)
                    .background(Color.yellow)
                Text("trailing padding only")
                    .padding(.trailing)
                    .background(Color.yellow)
                Text("Bottom padding only")
                    .padding(.bottom)
                    .background(Color.yellow)
            }
            Spacer()

            Text("Leading padding only")
                .padding(.leading,45)
                .background(Color.yellow)
            Spacer()
            Text("Top, Leading padding")
                .padding([.top,.leading],45)
                .background(Color.yellow)
            Text("Top, Leading and bottompadding")
                .padding([.top,.leading,.bottom],45)
                .background(Color.yellow)
            
            
            
        }
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
