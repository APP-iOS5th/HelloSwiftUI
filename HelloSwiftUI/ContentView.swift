//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황규상 on 4/8/24.
//
// 규상이 바부

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("clock-solid")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 50)
            
            Capsule().fill(Color.indigo)
            Circle().fill(Color.pink)
            Ellipse().fill(Color.purple)
            Rectangle().fill(Color.secondary)
            RoundedRectangle(cornerRadius:  31).fill(Color.green)
            Spacer()
            
            HStack(alignment: .center) {
                Image(systemName: "tortoise.fill")
                    .font(.largeTitle)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100, alignment: .leading)
                Image(systemName: "tortoise.fill")
                    .font(.largeTitle)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Image(systemName: "tortoise.fill")
                    .font(.largeTitle)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100, alignment: .trailing)
            }
            Spacer()
            
            HStack(alignment: .center) {
                Ellipse().fill(
                    RadialGradient(
                        gradient: Gradient(colors:[.blue,.yellow]),
                        center: .top,
                        startRadius: 10,
                        endRadius: 65
                    ))
                Ellipse().fill(
                    RadialGradient(
                        gradient: Gradient(colors:[.blue,.yellow]),
                        center: .center,
                        startRadius: 10,
                        endRadius: 65
                    ))
                Ellipse().fill(
                    AngularGradient(
                        gradient: Gradient(colors:[.blue,.yellow]),
                        center: .center
                    ))
            }
            Spacer()
            
            Image(systemName: "tortoise.fill")
            Image(systemName: "tortoise.fill").font(.title)
            Image(systemName: "tortoise.fill").font(.custom("", size: 50))
            Spacer()
            
        }
    }
}

#Preview {
    ContentView()
}

/**
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews:PreviewProvider {
    static var previews: some View {
            ContentView()
    }
 }
 */
