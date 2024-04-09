//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 황민경 on 4/8/24.
//

import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    @State private var tempValue: CGFloat = 0
    @State private var finalValue: CGFloat = 1
    var body: some View {
        VStack {
           Image(systemName: "star.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .scaleEffect(finalValue + tempValue)
                .gesture(MagnificationGesture()
                    .onChanged { amount in tempValue = amount - 1}
                    .onEnded { amount in finalValue += tempValue 
                        tempValue = 0})
        }
    }
}

#Preview {
    ContentView()
}
/*
 Swift 3.0 이전 프리뷰
 struct ContentView_Privews: PreviewProvider {
    static var previews: some view {
        ContentView()
    }
 }
 */
