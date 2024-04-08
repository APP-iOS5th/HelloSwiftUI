//
//  UIComponent2Example.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/8.
//

import SwiftUI

struct UIComponent2Example: View {
    var body: some View {
        VStack {
//            Capsule().fill(.yellow)
//            Circle().fill(.blue)
//            Ellipse().fill(.green)
//            Rectangle().fill(.brown)
//            RoundedRectangle(cornerRadius: 20).fill(.red)
            
//            MultipleSpacer(multiple: 1)
//            Ellipse().fill(RadialGradient(
//                colors: [.blue, .yellow],
//                center: .top,
//                startRadius: 10,
//                endRadius: 65
//            ))
//            Ellipse().fill(RadialGradient(
//                colors: [.blue, .yellow],
//                center: .center,
//                startRadius: 10,
//                endRadius: 65
//            ))
//            Ellipse().fill(RadialGradient(
//                colors: [.blue, .yellow],
//                center: .center,
//                startRadius: 10,
//                endRadius: 100
//            ))
//            Ellipse().fill(
//                AngularGradient(
//                    gradient: Gradient(colors: [.blue, .yellow]),
//                    center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/
//                )
//            )
            
            Image(systemName: "tortoise.fill")
            Image(systemName: "tortoise.fill")
                .font(.largeTitle)
            Image(systemName: "tortoise.fill")
                .font(.custom("", size: 50))
            
            MultipleSpacer(multiple: 1)
            
            Image(systemName: "flag.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
        }
    }
}

#Preview {
    UIComponent2Example()
}
