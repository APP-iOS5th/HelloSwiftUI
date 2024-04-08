//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by 조성빈 on 4/8/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var toggleTF = true
    @State private var stepValue = 0
    @State private var slideValue: Float = 0
    
    var body: some View {
        VStack {
            ZStack {
                Text("Top")
                    .font(.system(size: 40))
                    .background(.yellow)
                Text("Top")
                    .font(.system(size: 40))
                    .background(.red)
                    .offset(x: 20, y: 20)
            }
            .position(x: 200, y: 200)
        }
    }
}

//#Preview {
//    ContentView()
//}
