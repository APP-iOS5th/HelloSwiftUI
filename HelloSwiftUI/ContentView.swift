//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by JIHYE SEOK on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack {
            Capsule().fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
            Circle().fill(Color.green)
            Ellipse().fill(Color.yellow)
            Rectangle().fill(Color.secondary)
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(Color.indigo)
            
            Spacer()
            
            Ellipse().fill(
                RadialGradient(
                    gradient: Gradient(colors: [.blue, .yellow]),
                    center: .top,
                    startRadius: 10,
                    endRadius: 65))
            Ellipse().fill(
                RadialGradient(
                    gradient: Gradient(colors: [.blue, .yellow]),
                    center: .center,
                    startRadius: 10,
                    endRadius: 65))
            Ellipse().fill(
                RadialGradient(
                    gradient: Gradient(colors: [.blue, .yellow]),
                    center: .bottom,
                    startRadius: 10,
                    endRadius: 65))
            
            Spacer()
            
            Ellipse().fill(
                AngularGradient(
                    gradient: Gradient(colors:[.blue,.yellow]),
                    center: .center))
            
            Spacer()
            
            Image(systemName: "tortoise.fill")
            Image(systemName: "tortoise.fill").font(.largeTitle)
            Image(systemName: "tortoise.fill").font(.custom("", size: 50))
            
            Spacer()
            
//            Image("clock-solid")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 150, height: 50)
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
