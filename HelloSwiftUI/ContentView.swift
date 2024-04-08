//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Capsule().fill(Color.yellow)
            Circle().fill(Color.blue)
            Ellipse().fill(Color.brown)
            Rectangle().fill(Color.orange)
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(Color.green)
            
            Spacer()
            
            Ellipse().fill(RadialGradient(gradient: Gradient(colors: [.blue, .yellow]), center: .bottom, startRadius: 10, endRadius: 65))
            Spacer()
            Ellipse().fill(RadialGradient(gradient: Gradient(colors: [.blue, .yellow]), center: .center, startRadius: 10, endRadius: 65))
            Spacer()
            Ellipse().fill(AngularGradient(gradient: Gradient(colors: [.blue, .yellow]), center: .center))
    
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
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
 }
 */
