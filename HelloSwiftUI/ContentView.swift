//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 이인호 on 4/8/24.
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
                .scaleEffect(tempValue + finalValue)
                .gesture(
                MagnifyGesture()
                    .onChanged { value in
                        tempValue = value.magnification - 1
                    }
                    .onEnded { _ in
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
