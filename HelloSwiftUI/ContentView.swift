//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이인호 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var myDegrees: Double = 0.0
    @State var flag = false
    
    var body: some View {
        VStack {
            Image(systemName: "tortoise.fill")
                .font(.system(size: 100))
                .foregroundStyle(.red)
                .padding()
                .rotationEffect(Angle(degrees: flag ? myDegrees : 0))
//                .animation(.default, value: flag)
            
            Button("Animate now") {
                withAnimation(.easeInOut(duration: 2.1)) {
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
