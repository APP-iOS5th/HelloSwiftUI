//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by 조성빈 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("Various of Circle")
            HStack {
                Capsule()
                    .fill(.yellow)
                    .frame(width: 100, height: 150)
                Circle()
                    .fill(.blue)
                    .frame(width: 100)
                Ellipse()
                    .fill(.green)
                    .frame(width: 100, height: 150)
            }
            HStack {
                Ellipse()
                    .fill(
                        RadialGradient(gradient: Gradient(colors: [.pink, .brown]), center: .top, startRadius: 10, endRadius: 50)
                    )
                    .frame(width: 100, height: 150)
                Ellipse().fill(
                    RadialGradient(
                        gradient: Gradient(colors:[.blue,.yellow]),
                        center: .center,
                        startRadius: 10,
                        endRadius: 65
                    ))
                .frame(width: 100, height: 150)
                Ellipse().fill(
                    AngularGradient(
                        gradient: Gradient(colors:[.blue,.yellow]),
                        center: .center
                    ))
                .frame(width: 100, height: 150)
            }
            .padding(.bottom, 30)
            Text("Various of Rectangle")
            HStack {
                Rectangle()
                    .fill(.red)
                    .frame(width: 100, height: 100)
                RoundedRectangle(cornerRadius: 10)
                    .fill(.purple)
                    .frame(width: 100, height: 100)
            }
            .padding(.bottom, 30)
            Text("Image example")
            HStack {
                Image(systemName: "tortoise.fill")
                Image(systemName: "tortoise.fill").font(.largeTitle)
                Image(systemName: "tortoise.fill").font(.custom("", size: 50))
                Image("bowl-food-solid")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 50)
            }
        }
    }
}

//#Preview {
//    ContentView()
//}

