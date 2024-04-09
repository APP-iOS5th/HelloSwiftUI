//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김형준 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var degree = 0.0

    var body: some View {
        VStack {
            Text("tempValue = \(degree)")
            Spacer()
            Image(systemName: "star.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .rotationEffect(Angle.degrees(degree))
                .gesture(
                    RotationGesture()
                        .onChanged { A in
                            degree = A.degrees
                        }
                )
            Spacer()
        }
    }
}

                    
                    #Preview
                    {
                        ContentView()
                    }
