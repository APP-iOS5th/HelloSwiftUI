//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

struct ContentView: View {
    @State private var angle: Angle = .zero
    var body: some View {
        VStack {
            Text("degree = \(angle.degrees)")
            Spacer()
            Image(systemName: "star.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .rotationEffect(angle)
                .gesture(
                    RotateGesture()
                        .onChanged { value in
                            angle = value.rotation
                        }
                )
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
