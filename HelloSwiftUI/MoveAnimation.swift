//
//  MoveAnimation.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/11/24.
//

import SwiftUI

struct MoveAnimation: View {
    
    @State var move = true
    var body: some View {
        VStack {
            Text("A Text view")
                .offset(x: move ? 100 : 0, y: move ? 100 : 0)
                .position(x: move ? 100 : 0, y: move ? 100 : 0)
                .animation(.default, value: move)
            Toggle(isOn: $move, label: {
                Text("Toggle me")
            })
        }
    }
}

#Preview {
    MoveAnimation()
}
