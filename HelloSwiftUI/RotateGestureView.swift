//
//  RotateGestureView.swift
//  HelloSwiftUI
//
//  Created by 정종원 on 4/9/24.
//

import SwiftUI

struct RotateGestureView: View {
    
    @State private var angle: Angle = .zero
    
    var body: some View {
        VStack {
            Text("tempValue = \(angle)")
            Image(systemName: "star.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .rotationEffect(angle)
                .gesture(
                    RotateGesture()
                        .onChanged { angle in
                            self.angle = angle.rotation
                        }
                )
        }//VStack
    }
}

#Preview {
    RotateGestureView()
}
