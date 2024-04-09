//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 홍준범 on 4/8/24.
//

import SwiftUI

@available(iOS 15.0, *) // 15 이하로는 실행 안되게하는?


struct ContentView: View {
    @State private var tempValue: CGFloat = 0 //private 이 화면 밖에서 temp value를 수정할 일이 있을까요? 없으니 private 을 사용
    @State private var finalValue: CGFloat = 1
    var body: some View {
        VStack  {
            Image(systemName: "star.fill")
                .resizable()
                .scaledToFit() //얘는 부모크기에 맞춰줌
               // .aspectRatio(contentMode: .fit) 얘는 비율에 fit, fill을 시키는 거고
                .frame(width: 200, height: 200)
                .scaleEffect(finalValue + tempValue)
                .gesture(
                    MagnificationGesture()
                        .onChanged { amount in
                            tempValue = amount - 1
                        }
                        .onEnded { amount in
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

/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews: PreviewProvider {
 static var previews: som View {
 ContentView()
 }
 }
 */

