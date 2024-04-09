//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 장예진 on 4/8/24.

import SwiftUI


struct ContentView: View {
    //CGFloat => 그래픽처리할때 쓰는 Float & CGPoint => 그래픽처리할때 쓰는 좌표(x,y)값
    @State private var tempValue: CGFloat = 0
    @State private var finalValue: CGFloat = 1

    //state선언할때 뷰 밖에서 안쓸때는 private var으로 선언
    //이유: 뷰안에서 바인딩해야 밖으로 나갈 값을 private로 보호할수있음
    var body: some View{
        VStack{
            Image(systemName: "heart.fill")
                .resizable()
                .scaledToFit()
                .frame(width:100, height:200)
                .scaleEffect(finalValue + tempValue)
                .gesture(MagnificationGesture()
                    .onChanged { amount in
                        tempValue = amount - 1
                    }
                    .onEnded{ amount in
                        finalValue += tempValue
                        tempValue = 0
                    })

            
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
