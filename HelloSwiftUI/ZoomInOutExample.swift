//
//  ZoomInOutExample.swift
//  HelloSwiftUI
//
//  Created by MadCow on 2024/4/9.
//

import SwiftUI

struct ZoomInOutExample: View {
    
    // MARK: CGFloat -> 그래픽 처리할때 쓰는 Float
    @State private var tempValue: CGFloat = 0.0
    @State private var finalValue: CGFloat = 1.0
    
    var body: some View {
        VStack {
            Image(systemName: "star.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .scaleEffect(finalValue + tempValue)
                .gesture(
                    MagnificationGesture()
                        .onChanged({ value in
                            finalValue = value - 1
                        })
                        .onEnded({ value in
                            finalValue += tempValue
                            tempValue = 1
                        })
                )
        }
        .padding()
    }
}

#Preview {
    ZoomInOutExample()
}
