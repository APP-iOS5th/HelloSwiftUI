//
//  Shapes.swift
//  HelloSwiftUI
//
//  Created by 임재현 on 4/8/24.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            //            Capsule().fill(.yellow)
            //            Circle().fill(.blue)
            //            Ellipse().fill(.brown)
            //            Rectangle().fill(.red)
            //            RoundedRectangle(cornerRadius: 25).fill(.green)
            //
            //            Spacer()
            //            Ellipse().fill(RadialGradient(
            //                gradient: Gradient(colors: [.blue,.yellow]),
            //                center: .top,
            //                startRadius: 10,
            //                endRadius: 65
            //            ))
            //            Spacer()
            //            Ellipse().fill(RadialGradient(
            //                gradient: Gradient(colors: [.blue,.yellow]),
            //                center: .center,
            //                startRadius: 10,
            //                endRadius: 65
            //            ))
            //            Spacer()
            //            Ellipse().fill(
            //                AngularGradient(
            //                gradient: Gradient(colors: [.blue,.yellow]),
            //                center: .center
            //
            //            ))
            //            Spacer()
            
            Image(systemName: "tortoise.fill")
            Image(systemName: "tortoise.fill").font(.largeTitle)
            Image(systemName: "tortoise.fill").font(.custom("", size: 50))
            Spacer()
            Image("clock-solid").resizable().aspectRatio(contentMode: .fit).frame(width: 150,height: 50)
            
        
            
            
        }
    }
}

#Preview {
    Shapes()
}
