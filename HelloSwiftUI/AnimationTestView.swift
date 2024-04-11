//
//  AnimationTestView.swift
//  HelloSwiftUI
//
//  Created by Chung Wussup on 4/11/24.
//

import SwiftUI

struct AnimationTestView: View {
    @State var move = true
    
    var body: some View {
        VStack {
            Text("A Text View")
                .offset(x: move ? 100 : 0 , y: move ? 100 : 0)
                .background(.red)
                .animation(.default, value: move)
            
            
            Toggle(isOn: $move) {
                Text("Animation Toggle")
            }
        }
        
        
    }
}

#Preview {
    AnimationTestView()
}
