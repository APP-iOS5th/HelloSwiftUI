//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Jungjin Park on 2024-04-08.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    @State private var value = 0
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("Default padding of 16 points")
                .padding()
                .background(Color.yellow)
            Text("Padding of 45")
                .padding(45)
                .background(Color.yellow)
            Spacer(minLength: 500)
            HStack (alignment: .center, spacing: 25){
                Text("Top padding only")
                    .padding(.top)
                    .background(Color.yellow)
                Text("Top and trailing padding of 45")
                    .padding([.top, .trailing], 45)
                    .background(Color.yellow)
            }
            Spacer()
            Text("Padding of 45")
                .padding(.top, 45)
                .padding(.bottom, 30)
                .background(Color.yellow)
        }
    }
}

#Preview {
    ContentView()
}

/*
// Swift 3.0 이전 프리뷰
struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
        ContentView()
    }
}
*/
