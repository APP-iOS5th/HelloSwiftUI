//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 장예진 on 4/8/24.

import SwiftUI

struct ContentView: View {
    @State private var tempScaleValue: CGFloat = 1 // 현재 제스처로 인한 임시 스케일 값
    @State private var finalScaleValue: CGFloat = 1 // 최종 스케일 값을 저장
    @State private var degree: Double = 0.0 // 회전 각도

    var body: some View {
        VStack {
            Text("tempValue = \(tempScaleValue)")
            Spacer()
            Image(systemName: "heart.fill")
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .scaleEffect(finalScaleValue * tempScaleValue) // 스케일 적용
                .rotationEffect(.degrees(degree)) // 회전 적용
                .gesture(
                    MagnificationGesture()
                        .onChanged { amount in
                            tempScaleValue = amount // 임시 스케일 값 업데이트
                        }
                        .onEnded { amount in
                            finalScaleValue *= tempScaleValue // 최종 스케일 값 업데이트
                            tempScaleValue = 1 // 임시 스케일 값 초기화
                        }
                        .simultaneously(with: RotationGesture() // 회전 제스처와 동시에 적용
                            .onChanged { angle in
                                degree = angle.degrees // 회전 각도 업데이트
                            }
                        )
                )
            Spacer()
        }
    }
}
                    
#Preview {
    ContentView()
}

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: some View {
 ContentView()
 }
 }
 */
