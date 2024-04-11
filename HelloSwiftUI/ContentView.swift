//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 어재선 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var myDegrees: Double = -180.0
    @State var flag = false
    var body: some View {
        VStack{
            Image(systemName: "tortoise.fill")
                .font(.system(size: 50))
                .foregroundStyle(.red)
                .scaleEffect(flag ? 1.75 : 1)
//                .animation(.default, value: flag)
            Image(systemName: "tortoise.fill")
                .font(.system(size: 50))
                .foregroundStyle(.red)
                .scaleEffect(flag ? 1.75 : 1)
//                .animation(.easeIn, value: flag)
            Image(systemName: "tortoise.fill")
                .font(.system(size: 50))
                .foregroundStyle(.red)
                .scaleEffect(flag ? 1.75 : 1)
//                .animation(.easeOut, value: flag)
            Image(systemName: "tortoise.fill")
                .font(.system(size: 50))
                .foregroundStyle(.red)
                .scaleEffect(flag ? 1.75 : 1)
//                .animation(.easeInOut, value: flag)
            Button("Animate now"){
                withAnimation(.easeInOut(duration: 2.1)){
                    flag.toggle()
                }
            }
            Slider(value: $myDegrees, in: -180...180, step: 1)
                .padding()
        }
    }
}



#Preview {
    ContentView()
}

/*
 Swift 3.0이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
