//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

struct ContentView: View {
    @State private var degree = 0.0
    var body: some View {
        VStack {
            Text("degree = \(degree)")
            Spacer()
            Image(systemName: "star.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .rotationEffect(Angle.degrees(degree))
                .gesture(
                    RotationGesture()
                        .onChanged { angle in
                            degree = angle.degrees
                        }
                )
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
