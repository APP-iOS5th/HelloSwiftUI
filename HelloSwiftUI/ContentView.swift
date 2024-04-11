//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 어재선 on 4/8/24.
//

import SwiftUI
struct ContentView: View {
    @State var changeMe = true
    var body: some View {
        Image(systemName: "tortoise.fill")
            .font(.system(size: 100))
            .foregroundStyle(Color.red)
            .scaleEffect(changeMe ? 1.75 : 1)
            .onTapGesture {
                changeMe.toggle()
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
