//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by 조성빈 on 4/8/24.
//

import SwiftUI

//특정 버전 지원 제한 -> 15.0 버전 이하는 실행불가.
@available(iOS 15.0, *)
struct ContentView: View {
    
    @State private var degree: CGFloat = 0.0
    
    var body: some View {
        VStack {
            Text("tempValue = \(degree)")
            Image(systemName: "star.fill")
                .resizable()
                .scaledToFit()
//                .aspectRatio(0.5, contentMode: .fit) -> 0.5(1:2) 비율로 fit하게 비율 맞춰줌.
                .frame(width: 200)
                .rotationEffect(Angle.degrees(degree))
                .gesture(
                    RotationGesture()
                        .onChanged { angle in
                            degree = angle.degrees
                        }
                )
        }
        .onAppear() {
            print("ContentView Load.")
        }
    }
}

//#Preview {
//    ContentView()
//}

