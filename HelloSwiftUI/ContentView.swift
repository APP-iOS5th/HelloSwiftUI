//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by John Yun on 4/8/24.
//

import SwiftUI


struct ContentView: View {
    @State private var angle: Angle = .zero
    
    var body: some View {
        VStack {
            Text("degree = \(angle)")
            Spacer()
            Image(systemName: "star.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
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
