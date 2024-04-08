//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김형준 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        VStack {
//            Capsule().fill(Color.yellow)
//            Circle().fill(Color.blue)
//            Ellipse().fill(Color.green)
//            Rectangle().fill(Color.red)
//            RoundedRectangle(cornerRadius: 40)
//                .fill(Color.brown)
            Spacer()
            Ellipse().fill(
                RadialGradient(gradient: Gradient(colors: [.blue, .red]), center: .top, startRadius: 10, endRadius: 60))
            Spacer()
            Ellipse().fill(
                RadialGradient(gradient: Gradient(colors: [.blue, .red]), center: .center, startRadius: 10, endRadius: 60))
            Spacer()
            Ellipse().fill(
                AngularGradient(colors: [.blue, .yellow], center: .center)
    )
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
