//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungman Bae on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack{
//            Capsule().fill(.yellow)
//            Circle().fill(.blue)
//            Ellipse().fill(.brown)
//            Rectangle().fill(.red)
//            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).fill(.green)
            
//            Spacer()
//            
//            Ellipse().fill(RadialGradient(gradient: Gradient(colors: [.blue, .yellow]),
//                                          center: .top,
//                                          startRadius: 10,
//                                          endRadius: 65))
//            
//            Ellipse().fill(RadialGradient(gradient: Gradient(colors: [.blue, .yellow]),
//                                          center: .center,
//                                          startRadius: 10,
//                                          endRadius: 65))
//            
//            Ellipse().fill(AngularGradient.init(gradient: Gradient(colors: [Color.red, Color.blue]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/))
            
            Image(systemName: "tortoise.fill")
            Image(systemName: "tortoise.fill").font(.largeTitle)
            Image(systemName: "tortoise.fill").font(.custom("", size: 50))
            
            Spacer()
            
            Image(systemName: "clock")
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
