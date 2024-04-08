//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이인호 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack {
            Ellipse().fill(
                RadialGradient(
                    gradient: Gradient(colors: [.blue, .yellow]), center: .top, startRadius: 10, endRadius: 65)
            )
            Ellipse().fill(
                RadialGradient(
                    gradient: Gradient(colors: [.blue, .yellow]), center: .center, startRadius: 10, endRadius: 65)
            )
            Ellipse().fill(
                AngularGradient(
                    gradient: Gradient(colors: [.purple, .yellow]), center: .center)
            )
            
            Image(systemName: "tortoise.fill")
            Image(systemName: "tortoise.fill").font(.largeTitle)
            Image(systemName: "tortoise.fill").font(.custom("", size: 50))
            
            Spacer()
            
            Image(systemName: "clock.fill")
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
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
 }
 */
