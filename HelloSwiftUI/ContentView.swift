//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by SungWoonLee on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack  {
            
            //            Capsule().fill(Color.yellow)
            //            Circle().fill(Color.blue)
            //            Ellipse().fill(Color.brown)
            //            Rectangle().fill(Color.red)
            //            RoundedRectangle(cornerRadius: 30).fill(Color.green)//cornerRadius는 모서리 곡률
            
            //            Spacer()
            //            Ellipse().fill(
            //                RadialGradient (
            //                    gradient: Gradient(colors:[.blue, .yellow]),
            //                    center: .top,
            //                    startRadius: 10,
            //                endRadius: 65))
            //            Spacer()
            //            Ellipse().fill(
            //                RadialGradient (
            //                    gradient: Gradient(colors:[.blue, .yellow]),
            //                    center: .top,
            //                    startRadius: 10,
            //                endRadius: 65))
            //            Spacer()
            //            Ellipse().fill(
            //                RadialGradient (
            //                    gradient: Gradient(colors:[.blue, .yellow]),
            //                    center: .top,
            //                    startRadius: 10,
            //                endRadius: 65))
            //            Spacer()
            
            Image(systemName: "tortoise.fill")
            Image(systemName: "tortoise.fill").font(.largeTitle)
            Image(systemName: "tortoise.fill").font(.custom("", size: 50))
            //내장 아이콘 가져오기.
            
            Image("clock-solid").resizable().aspectRatio(contentMode: .fill).frame(width: 150, height: 50) //fill은 그냥 넘어가도 되고, fit은 맞게 들어가게 하는 것.
            // asset에 추가한 아이콘 사용하기.
            
            
        }
    }
}
#Preview {
    ContentView()
}

/*
 
 Swift 3.0 이전 프리뷰
 struct ContentView)Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 
 */
