//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이서경 on 2024/04/08.
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
