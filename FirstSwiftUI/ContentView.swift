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
            Text("Default padding of 16 points")
                .padding()
                .background(.yellow)
            Text("Default padding of 45 points")
                .padding(45)
                .background(.yellow)
            Text("Default padding of 3 points")
                .padding(3)
                .background(.yellow)
            Text("Top padding only")
                .padding(.top)
                .background(.yellow)
            Text("Trailing padding only")
                .padding(.trailing)
                .background(.yellow)
            Text("Leading padding only")
                .padding(.leading)
                .background(.yellow)
            Text("Bottom padding only")
                .padding(.bottom)
                .background(.yellow)
            Text("Bottom padding only")
                .padding([.top, .leading], 45)
                .background(.yellow)
            Text("Bottom padding only")
                .padding([.top, .leading, .bottom], 45)
                .background(.yellow)
        }
    }
}

//#Preview {
//    ContentView()
//}
