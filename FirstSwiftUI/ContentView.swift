//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by 조성빈 on 4/8/24.
//

import SwiftUI

//특정 버전 지원 제한 -> 15.0 버전 이하는 실행불가.
@available(iOS 15.0, *)
struct ContentView: View {
    
    @State var myDegrees: Double = 0.0
    @State var flag = false
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
                .rotationEffect(Angle(degrees: flag ? myDegrees : 0))
//                .animation(.default, value: flag)
            Text("Hello, world!")
                .padding()
                .rotationEffect(Angle(degrees: flag ? myDegrees : 0))
//                .animation(.easeIn, value: flag)
            Text("Hello, world!")
                .padding()
                .rotationEffect(Angle(degrees: flag ? myDegrees : 0))
//                .animation(.easeOut, value: flag)
            Text("Hello, world!")
                .padding()
                .rotationEffect(Angle(degrees: flag ? myDegrees : 0))
//                .animation(.easeInOut, value: flag)
            Button(action: {
                withAnimation(.easeInOut(duration: 3)) {
                    flag.toggle()
                }
            }) {
                Text("Animate now")
            }
            Slider(value: $myDegrees, in: -180...180, step: 1)
                .padding()
        }
    }
}
//#Preview {
//    ContentView()
//}

