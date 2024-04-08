//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 육현서 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//                        Capsule().fill(Color.yellow)
//                        Circle().fill(Color.blue)
//                        Ellipse().fill(Color.brown)
//                        Rectangle().fill(Color.red)
//                        RoundedRectangle(cornerRadius:  25).fill(Color.green)
            
//                        Spacer()
//                        Ellipse().fill(
//                            RadialGradient(
//                                gradient: Gradient(colors:[.blue,.yellow]),
//                                center: .top,
//                                startRadius: 10,
//                                endRadius: 65
//                            ))
//                        Spacer()
//                        Ellipse().fill(
//                            RadialGradient(
//                                gradient: Gradient(colors:[.blue,.yellow]),
//                                center: .center,
//                                startRadius: 10,
//                                endRadius: 65
//                            ))
//                        Spacer()
//                        Ellipse().fill(
//                            AngularGradient(
//                                gradient: Gradient(colors:[.blue,.yellow]),
//                                center: .center
//                            ))
//                        Spacer()
            Image(systemName: "tortoise.fill")
            Image(systemName: "tortoise.fill").font(.largeTitle)
            Image(systemName: "tortoise.fill").font(.custom("", size: 50))
            Spacer()
            Image(systemName: "sun.min").font(.custom("", size: 50))
            
//          Image("clock-solid")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 150, height: 50)
        }
    }
}


#Preview {
    ContentView()
}
 
