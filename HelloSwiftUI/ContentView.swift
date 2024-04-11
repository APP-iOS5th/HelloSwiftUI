//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김형준 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var myDegrees: Double = 0.0
    @State var flag = false

    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
                .rotationEffect(Angle(degrees: flag ? myDegrees : 0))
                .animation(.default, value: flag)
            Image(systemName: "tortoise.fill")
                .font(.system(size: 100))
                .foregroundStyle(.red)
                .rotationEffect(Angle(degrees: flag ? myDegrees : 0))
                .animation(.smooth, value: flag)
            Image(systemName: "tortoise.fill")
                .font(.system(size: 100))
                .foregroundStyle(.red)
                .scaleEffect(flag ? 0.08 : 1.4)
                .animation(.linear, value: flag)
            Button("Animate now") {
                flag.toggle()
            }
            Slider(value: $myDegrees, in: -180...180, step: 1)
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
