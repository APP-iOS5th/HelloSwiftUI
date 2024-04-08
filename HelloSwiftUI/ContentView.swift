//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 장예진 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        VStack {
//            ZStack{
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(Color.yellow)
//                Text("Top")
//                    .font(.system(size: 40))
//                    .background(Color.yellow)
//                //position은 절대 좌표계에서 이동한위치
//                    .position(x:255, y:127)
//                Text("Top")
//                        .font(.system(size:40))
//                        .background(Color.yellow)
//                //offset은 나의 위치에서 이동한 위치
//                        .offset(x:74, y:125)
//            }
            Text("First")
                .font(.system(size:40))
                .background(Color.yellow)
               
            Text("second view")
                .font(.system(size: 40))
                .background(Color.yellow)

                }
        //VStack offset 설정
        .offset(x:25,y:125)
            
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
