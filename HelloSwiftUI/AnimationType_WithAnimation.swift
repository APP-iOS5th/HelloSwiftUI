//
//  AnimationType_WithAnimation.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/11/24.
//

import SwiftUI

struct AnimationType_WithAnimation: View {
    
    @State var flag = false
    
    var body: some View {
        VStack {
            Image(systemName: "tortoise.fill")
                .font(.system(size: 50))
                .tint(.red)
                .scaleEffect(flag ? 1.75 : 1)
//                .animation(.default, value: flag)
            Image(systemName: "tortoise.fill")
                .font(.system(size: 50))
                .tint(.red)
                .scaleEffect(flag ? 1.75 : 1)
//                .animation(.easeIn, value: flag)
            Image(systemName: "tortoise.fill")
                .font(.system(size: 50))
                .tint(.red)
                .scaleEffect(flag ? 1.75 : 1)
//                .animation(.easeOut, value: flag)
            Image(systemName: "tortoise.fill")
                .font(.system(size: 50))
                .tint(.red)
                .scaleEffect(flag ? 1.75 : 1)
//                .animation(.easeInOut, value: flag)

            Button("Animate now") {
                withAnimation(.easeInOut(duration: 2.1)) {
                    flag.toggle()
                }
            }
        }
    }
}

#Preview {
    AnimationType_WithAnimation()
}
