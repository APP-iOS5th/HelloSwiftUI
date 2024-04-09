//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by mosi on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var angle: Angle = .zero
    
    var body: some View {
        VStack {
            Text("tempValue =  \(angle)")
            Spacer()
            Image(systemName: "star.fill")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .scaledToFit()
                .frame(width: 200, height: 200)
                .rotationEffect(angle)
                .gesture(
                    RotateGesture()
                        .onChanged { a in
                            angle = a.rotation
                        }
                )
            Spacer()
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
