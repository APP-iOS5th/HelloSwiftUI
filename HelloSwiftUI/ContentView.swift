//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 박지혜 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var tempValue: CGFloat = 0
    @State private var finalValue: CGFloat = 1
    
    var body: some View {
        VStack {
            Image(systemName: "star.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .scaleEffect(finalValue + tempValue) // 1
                .gesture(
                    MagnificationGesture() // option + 드래그
                        .onChanged { amount in // 변하고 있는 중
                            tempValue = amount - 1} // 영점 조정
                        .onEnded { amount in // 손가락 딱 뗐을 때
                            finalValue += tempValue
                            tempValue = 0
                        }
                )
        }
    }
}


#Preview {
    ContentView()
}
