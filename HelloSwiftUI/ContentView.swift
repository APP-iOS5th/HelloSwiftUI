//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by John Yun on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var changeMe = true
    var body: some View {
        Image(systemName: "tortoise.fill")
            .font(.system(size: 100))
            .foregroundStyle(.red)
            .scaleEffect(changeMe ? 1.75 : 1)
            .animation(.default, value: changeMe)
            .onTapGesture {
                changeMe.toggle()
            }
    }
}

#Preview {
    ContentView()
}
