//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김형준 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var changeMe = true
    var body: some View {
        Image(systemName: "tortoise.fill")
            .font(.system(size: 100))
            .foregroundStyle(.red)
            .scaleEffect(changeMe ? 0.08 : 3)
            .animation(.smooth, value: changeMe)
        Text("이게뭐지?")
            .position(CGPoint(x: 188.0, y: 300.0))
            .onTapGesture {
                changeMe.toggle()
            }
    }
}

#Preview {
    ContentView()
}
