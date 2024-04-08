//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.0
    
    var body: some View {
        VStack() {
//            Capsule().fill(Color.yellow)
//            Circle().fill(Color.blue)
//            Ellipse().fill(Color.brown)
//            Rectangle().fill(Color.red)
//            RoundedRectangle(cornerRadius:  25).fill(Color.green)
//
//            Spacer()
//            Ellipse().fill(
//                RadialGradient(
//                    gradient: Gradient(colors:[.blue,.yellow]),
//                    center: .top,
//                    startRadius: 10,
//                    endRadius: 65
//                ))
//            Spacer()
//            Ellipse().fill(
//                RadialGradient(
//                    gradient: Gradient(colors:[.blue,.yellow]),
//                    center: .center,
//                    startRadius: 10,
//                    endRadius: 65
//                ))
//            Spacer()
//            Ellipse().fill(
//                AngularGradient(
//                    gradient: Gradient(colors:[.blue,.yellow]),
//                    center: .center
//                ))
//            Spacer()
            Image(systemName: "tortoise.fill")
            Image(systemName: "tortoise.fill").font(.largeTitle)
            Image(systemName: "tortoise.fill").font(.custom("", size: 50))
            Spacer()
            Image("clock-solid")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 50)
        }
    }
}

#Preview {
    ContentView()
}

/*
 swift 3.0 이전 프리뷰
 struct ContentView_Preview: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
