//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이서경 on 2024/04/08.
//

import SwiftUI

struct ContentView: View {
    @State private var tempValue: CGFloat = 0
    @State private var finalValue: CGFloat = 1
    var body: some View {
        VStack {
            Image(systemName: "star.fill")
                .resizable() // 이미지 사이즈 조정 가능
                .scaledToFit() // 비율 유지
                .frame(width: 200, height: 200) // 프레임 크기
                .scaleEffect(finalValue + tempValue) // 확대/축소 효과
                .gesture( // 이미지에 제스처 추가
                    MagnificationGesture() //를 사용해서 확대/축소
                        .onChanged { amount in
                            tempValue = amount - 1 // 변화량 저장
                        }
                        .onEnded { amount in
                            finalValue += tempValue
                            tempValue = 0 // 초기화
                        }
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
