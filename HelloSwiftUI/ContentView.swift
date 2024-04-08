//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            /*
             //offset은 자기가 그려지는 위치기준
             //position은 부모기준으로 나를 어디에 위치시킬거냐
            ZStack {
                Text("Top")
                    .font(.system(size: 40))
                    .background(Color.blue)
                Text("Top")
                    .font(.system(size: 40))
                    .background(Color.blue)
                    .position(x:255 ,y:127)
                Text("Top")
                    .font(.system(size: 40))
                    .background(Color.blue)
                    .offset(x: 74, y: 124)
                
            }
            */
            
            Text("First")
                .font(.system(size: 40))
                .background(Color.blue)
            Text("Second View")
                .font(.system(size: 40))
                .background(Color.blue)
        }
        //VStack offset설정
        .offset(x: 25, y: 125)
    }
}

#Preview {
    ContentView()
}
/*
Swift 3.0 이전 프리퓨
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
