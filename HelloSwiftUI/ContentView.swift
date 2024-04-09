//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황규상 on 4/8/24.
//
// 규상이 바부

import SwiftUI

struct ContentView: View {
    ///CG는 CoreGraphics 프레임워크의 약자
    @State private var tempValue: CGFloat = 1.0 //CGFloat => 그래픽처리할때 쓰는 Float
    @State private var finalValue: CGFloat = 1 //CGPoint => 그래픽처리할때 쓰는 좌표(x,y)값
    
    var body: some View {
        VStack {
            Image(systemName: "star.fill")
                .resizable()
                .aspectRatio(contentMode: .fill)
                // .scaledToFit()
                .frame(width: 200, height: 200)
                .scaleEffect(finalValue + tempValue)
                .gesture(
                    MagnificationGesture()
                        //onChanged 는 "변하고 있는 중"
                        .onChanged { amount in
                            print(amount)
                            tempValue = amount - 1 //amount의 default 값이 1이라 0으로 조정해줌.
                        }
                        //onEnded는 손가락 딱 뗐을때
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

/**
 Swift 3.0 이전 프리뷰
 struct ContentView_Previews:PreviewProvider {
    static var previews: some View {
            ContentView()
    }
 }
 */
