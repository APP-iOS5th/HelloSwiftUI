//
//  AnimationTestView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/11/24.
//

import SwiftUI

struct AnimationTestView: View {
    
    @State var myDgrees: Double = 0.0
    @State var flag = false
    
    var body: some View {
        VStack {
            Text("Hello, World")
                .padding()
                .rotationEffect(Angle.degrees(flag ? myDgrees : 0))
                .animation(.default, value: flag)
            
            Button("Animate now") {
                flag.toggle()
            }
            
            Slider(value: $myDgrees, in: -180...180, step: 1)
                .padding()
            
        }
        
    }
}

#Preview {
    AnimationTestView()
}
