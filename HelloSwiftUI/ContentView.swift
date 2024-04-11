//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 장예진 on 4/8/24.

import SwiftUI


struct ContentView: View{
    
    @State var move = true
    
    var body: some View{
        VStack{
            Text("A Text view")
            //ofset을 position으로 바꿀수있음
                .offset(x: move ? 100 : 0 , y: move ? 100 : 0)
                .animation(.default, value: move)
            Toggle(isOn: $move, label:{
                Text("Toggle me")
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
