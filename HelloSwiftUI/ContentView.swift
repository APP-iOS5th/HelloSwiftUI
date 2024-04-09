//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 차지용 on 4/8/24.
//

import SwiftUI
//확대 축소 제스처
struct ContentView: View {
    @State private var tempValue: CGFloat = 0
    @State private var finalValue: CGFloat = 1
    var body: some View {
        VStack {
            Image(systemName: "star.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaledToFit() //부모 크기에 맞춰서
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
Swift 3.0 이전 프리퓨
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
