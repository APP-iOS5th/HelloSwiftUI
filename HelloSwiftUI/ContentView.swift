//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 홍준범 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            Capsule().fill(Color.purple)
//            Circle().fill(Color.blue)
//            Ellipse().fill(Color.yellow)
//            Rectangle().fill(Color.red)
//            RoundedRectangle(cornerRadius: 30).fill(Color.green)
            
            Spacer()
            
            Ellipse().fill(RadialGradient(
                gradient: Gradient(colors: [.blue, .yellow]),
                center: .top,
                startRadius: 10,
                endRadius: 65
            ))
            Spacer()
            Ellipse().fill(RadialGradient(
                gradient: Gradient(colors: [.blue, .yellow]),
                center: .center,
                startRadius: 10,
                endRadius: 65
            ))
            Spacer()
            Ellipse().fill(
                AngularGradient(
                gradient: Gradient(colors: [.blue, .yellow]),
                center: .center
            ))
            Spacer()
            
            Image(systemName: "tortoise.fill")
            Image(systemName: "tortoise.fill").font(.largeTitle)
            Image(systemName: "tortoise.fill").font(.custom("", size: 50))
            Spacer()
            Image("clock-solid").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).frame(width: 150, height: 50)
        }
    }
}
#Preview {
    ContentView()
}

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: som View {
 ContentView()
 }
 }
 */
  
