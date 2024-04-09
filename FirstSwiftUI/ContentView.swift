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
    
    @State private var oneTouch = false
    @State private var twoTouch = false
    @State private var threeTouch = false
    
    @State private var message = ""
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(oneTouch ? .red : .blue)
                .onTapGesture(count: 2) {
                    oneTouch.toggle()
                }
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(twoTouch ? .black : .gray)
                .onLongPressGesture {
                    twoTouch.toggle()
                }
            
            Text(message).padding()
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(threeTouch ? .black : .gray)
                .onLongPressGesture(minimumDuration: 2, maximumDistance: 2, pressing: {
                    stillPressed in
                    message = "Long press in progress: \(stillPressed)"
                }) {
                    threeTouch.toggle()
                }
        }
        .onAppear() {
            print("ContentView Load.")
        }
    }
    

    
}

//#Preview {
//    ContentView()
//}

