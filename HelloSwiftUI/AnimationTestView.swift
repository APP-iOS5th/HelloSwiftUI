//
//  AnimationTestView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/11/24.
//

import SwiftUI

struct AnimationTestView: View {
    @State var changeMe = true
    
    var body: some View {
        
        Image(systemName: "tortoise.fill")
            .font(.system(size: 100))
            .foregroundStyle(.red)
            .scaleEffect(changeMe ? 1.75 : 1.0 )
            .animation(.default, value: changeMe)
            .onTapGesture {
                changeMe.toggle()
            }
        
        
        
    }
}

#Preview {
    AnimationTestView()
}
