//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

struct ContentView: View {
    @State var tempValue: CGFloat = 0
    @State var finalValue: CGFloat = 1
    var body: some View {
        VStack {
            Image(systemName: "star.fill")
                .resizable()
//                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .scaleEffect(finalValue + tempValue)
                .gesture(
//                    MagnificationGesture()
//                        .onChanged { amount in
//                            tempValue = amount - 1
//                        }
//                        .onEnded {
//                            amount in
//                            finalValue += tempValue
//                            tempValue = 0
//                        }
                    MagnifyGesture()
                        .onChanged { amount in
                            tempValue = amount.magnification - 1
                        }
                        .onEnded {
                            amount in
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
