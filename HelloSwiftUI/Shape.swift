//
//  Shape.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/8/24.
//

import SwiftUI

struct Shape: View {
    var body: some View {
        Capsule().fill(.yellow)
        Capsule().fill(.blue)
        Ellipse().fill(.brown)
        Rectangle().fill(.red)
        RoundedRectangle(cornerRadius: 25).fill(.green)
        
        Spacer()
        
        Ellipse().fill(RadialGradient(gradient: Gradient(colors: [.blue, .yellow]), center: .top, startRadius: 10, endRadius: 65))
        
        Spacer()
        
        Ellipse().fill(RadialGradient(gradient: Gradient(colors: [.blue, .yellow]), center: .center, startRadius: 10, endRadius: 65))
        
        Spacer()
        
        Ellipse().fill(
            AngularGradient(
                gradient: Gradient(colors:[.blue,.yellow]),
                center: .center
            ))
        
        
        HStack {
            Image(systemName: "tortoise.fill")
            Image(systemName: "tortoise.fill").font(.largeTitle)
            Image(systemName: "tortoise.fill").font(.custom("", size: 50))
            
            Spacer()
            
            Image(systemName: "arrow.right")
                .resizable()
//                .aspectRatio(contentMode: .fit)
                .scaledToFit()
                .frame(width: 150, height: 50)
            
        }
    }
}

#Preview {
    Shape()
}
