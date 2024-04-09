//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이서경 on 2024/04/08.
//

import SwiftUI

struct ContentView: View {
    @State private var degree = 0.0
    var body: some View {
        VStack {
            Text("degree = \(degree)")
            Spacer()
            Image(systemName: "star.fill")
                .resizable() // 이미지 사이즈 조정 가능
                .aspectRatio(contentMode: .fit) // 비율 유지
                .frame(width: 200, height: 200) // 프레임 크기
                .rotationEffect(Angle.degrees(degree))
                .gesture( // 이미지에 제스처 추가
                    RotationGesture()
                        .onChanged({ angle in
                            degree = angle.degrees
                        })
                )
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
