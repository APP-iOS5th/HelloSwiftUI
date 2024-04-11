//
//  ScaleAnimationEx.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/11/24.
//

import SwiftUI

struct ScaleAnimationEx: View {
    @State var changeMe = true
    var body: some View {
        VStack {
            Image(systemName: "tortoise.fill")
                .font(.system(size: 100))
                .tint(.red)
                .scaleEffect(changeMe ? 1.75 : 1)
                .animation(.default, value: changeMe)
                .onTapGesture {
                    changeMe.toggle()
                }
        }
    }
}

#Preview {
    ScaleAnimationEx()
}
