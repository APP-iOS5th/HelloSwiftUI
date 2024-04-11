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
            
            LazyVGrid(columns: [GridItem(.fixed(200)),GridItem(.fixed(200))], content: {
                Text("Hello, World")
                    .padding()
                    .rotationEffect(Angle.degrees(flag ? myDgrees : 0))
//                    .animation(.default, value: flag)
                
                Text("bouncy")
                    .padding()
                    .rotationEffect(Angle.degrees(flag ? myDgrees : 0))
//                    .animation(.bouncy, value: flag)
                
                Text("easeIn")
                    .padding()
                    .rotationEffect(Angle.degrees(flag ? myDgrees : 0))
//                    .animation(.easeIn, value: flag)
                
                Text("easeInOut")
                    .padding()
                    .rotationEffect(Angle.degrees(flag ? myDgrees : 0))
//                    .animation(.easeInOut, value: flag)
                
                Text("easeOut")
                    .padding()
                    .rotationEffect(Angle.degrees(flag ? myDgrees : 0))
//                    .animation(.easeOut, value: flag)
                
                Text("interactiveSpring")
                    .padding()
                    .rotationEffect(Angle.degrees(flag ? myDgrees : 0))
//                    .animation(.interactiveSpring, value: flag)
                
                Text("interpolatingSpring")
                    .padding()
                    .rotationEffect(Angle.degrees(flag ? myDgrees : 0))
//                    .animation(.interpolatingSpring, value: flag)
                
                Text("linear")
                    .padding()
                    .rotationEffect(Angle.degrees(flag ? myDgrees : 0))
//                    .animation(.linear, value: flag)
                
                Text("smooth")
                    .padding()
                    .rotationEffect(Angle.degrees(flag ? myDgrees : 0))
//                    .animation(.smooth, value: flag)
                
                Text("snappy")
                    .padding()
                    .rotationEffect(Angle.degrees(flag ? myDgrees : 0))
//                    .animation(.snappy, value: flag)
            })
            
            
            
            Button("Animate now") {
                withAnimation(.easeInOut(duration: 2.1)) {
                    flag.toggle()
                }
                
            }
            
            Slider(value: $myDgrees, in: -180...180, step: 1)
                .padding()
            
        }
        
    }
}

#Preview {
    AnimationTestView()
}
